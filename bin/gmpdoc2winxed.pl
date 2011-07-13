#!/usr/bin/perl

use strict;
use warnings;

use File::Slurp;
use Web::Scraper;
use YAML qw(LoadFile);
use List::MoreUtils qw(any);

# Description: reads the GMP documentation (a single file HTML) and outputs a
# Winxed file with documentation and functions.

if (scalar @ARGV != 2 || ! -e $ARGV[0]) {
  die "Usage: perl gmpdoc2winxed.pl /path/to/gmp.html \"regex prefix\"\n";
}

my $filename = $ARGV[0];

my $prefix = $ARGV[1];

my @blacklist = @{LoadFile('conf/blacklist.yml')};

my %c_to_nci_mappings  = %{LoadFile('conf/c_to_nci_mappings.yml')};
my %nci_to_winxed_mappings = %{LoadFile('conf/nci_to_winxed_mappings.yml')};
my %aliases = %{LoadFile('conf/aliases.yml')};

my $functions = process_gmp_docs($filename);
print_winxed($functions);

sub process_gmp_docs {
  my $filename = shift;
  my @all_functions;

  my $raw_gmp_docs = read_file( $filename );
  $raw_gmp_docs =~ s/&mdash;/-/g;
  $raw_gmp_docs =~ s/&nbsp;/ /g;
  $raw_gmp_docs =~ s/&minus;/-/g;
  $raw_gmp_docs =~ s/&ldquo;/"/g;
  $raw_gmp_docs =~ s/&rdquo;/"/g;
  $raw_gmp_docs =~ s/<!--.+?-->//g;

  my $gmp_docs = scraper {
    process "div.defun", 'data[]' => scraper {
      process "*", 'function' => 'raw',
      process "blockquote", 'raw_description' => 'raw',
      process "blockquote", 'description' => 'text',
    }
  };

  my $res = $gmp_docs->scrape(\$raw_gmp_docs);

  foreach (@{$res->{'data'}}) {
    my $function = $_->{'function'};
    next if $function !~ m/- (?:Function|Macro): [^G]/;
    my $description = $_->{'description'};
    my $raw_description = $_->{'raw_description'};
    $function = substr($function, 0, length($function) - length($raw_description) - 25);
    $function =~ s/^Function:  //g;
    my @functions_in_description = grep {!/^$/} split / - (?:Function|Macro): /, $function, -1;
    my @parsed_functions;
    foreach (@functions_in_description) {
      # skip class functions
      next if m/class::/;
      s!<small class="dots">\.\.\.</small>!...!g;
      my ($return_type, $function_name, $parameters) = /([^<]+) <b>([^<]+)<\/b> \(<var>(.*?)<\/var>\)/;
      next if !$function_name;
      warn "Bad line parse: $_" if (!$return_type || !$function_name || !$parameters);
      next if $function_name !~ /^$prefix/;
      next if any { $function_name eq $_ } @blacklist;
      my @params;
      foreach (split /\s*,\s*/, $parameters) {
        next if $_ =~ m/\.\.\./;
        my ($type, $name) = /^(.*) ([^\s]+)$/;
        if ($name && $name =~ s/^\*//) {
          $type .= ' *';
        }
        push @params, { type => $type, name => $name };
      }
      push @parsed_functions, {
        params        => \@params,
        return_type   => $return_type,
        function_name => $function_name,
      };
    }
    push @all_functions, {
      description => $description,
      functions   => \@parsed_functions,
    };
  }

  return \@all_functions;
}

sub print_winxed {
  my $functions = shift;

  foreach (@{$functions}) {
    next if scalar @{$_->{'functions'}} == 0;
    # print documentation
    my $description = $_->{'description'};
    print "/*\n";
    foreach(@{$_->{'functions'}}) {
      my $signature = join ", ", map { "$_->{'type'} $_->{'name'}" } @{$_->{'params'}};
      # TODO: refactor into Template::Toolkit
      print "=head1 $_->{'return_type'} $_->{'function_name'} ($signature)\n\n";
    }
    print "$description\n\n" if $description;
    print "=cut\n*/\n\n";
    # print Winxed code
    foreach(@{$_->{'functions'}}) {
      my $signature = join ", ", map { c_to_winxed_mapping($_->{'type'}) . " $_->{'name'}" } @{$_->{'params'}};
      my $function_name = $_->{'function_name'};
      print "function $function_name ($signature) {\n";
      # print parameter checking code
      foreach(@{$_->{'params'}}) {
        if($_->{'type'} eq 'mpz_t') {
          print <<EOF;
  if(!($_->{'name'} instanceof GMP.Integer))
    throw Error("incorrect type for $_->{'name'} in $function_name");
EOF
        }
      }
      # might need to use something from GMP.Common
      my $using_statements = '';
      # print actual function calling code
      my $nci_signature = join ", ", map {
          if ($_->{'type'} eq 'char *') {
            # box strings correctly
            $using_statements .= "using GMP.Common.stoa;\n";
            "stoa($_->{'name'})";
          } elsif ($_->{'type'} eq 'mpz_t') {
            # pass the internal pointer, not the winxed object
            "$_->{'name'}.ptr";
          } else {
            # let NCI handle it
            $_->{'name'};
          }
        } @{$_->{'params'}};
      $function_name = $aliases{$function_name} if exists $aliases{$function_name};
      my $internal_function_name = $function_name =~ /^g/ ? "__$function_name" : "__g$function_name";
      my $return = $_->{'return_type'} eq 'void' ? '' : 'return';
      my $line = "$internal_function_name($nci_signature)";
      if ($_->{'return_type'} eq 'char *') {
        $line = "atos($line)";
        $using_statements .= "using GMP.Common.atos;\n";
      }
      print <<EOF;
  using GMP.Raw.$internal_function_name;
EOF
      print "  ", $using_statements, "\n" if $using_statements;
      print <<EOF;
  $return $line;
}

EOF
    }
  }
}

sub c_to_winxed_mapping {
  my $c_type = shift;
  my $nci_type;

  # because we map char * -> p
  if ($c_type eq 'char *') {
    return 'string';
  }

  if (exists $c_to_nci_mappings{$c_type}) {
    $nci_type = $c_to_nci_mappings{$c_type};
  }
  else {
    warn "No NCI type found for '$c_type'";
    $nci_type = 'p';
  }

  if (exists $nci_to_winxed_mappings{$nci_type}) {
    return $nci_to_winxed_mappings{$nci_type};
  }
  else {
    warn "No Winxed type found for '$nci_type'";
    return 'var';
  }
}
