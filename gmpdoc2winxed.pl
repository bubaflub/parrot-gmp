#!/usr/bin/perl

use strict;
use warnings;

use File::Slurp;
use Web::Scraper;
use YAML qw(LoadFile);

# Description: reads the GMP documentation (a single file HTML) and outputs a
# Winxed file with documentation and functions.

if (scalar @ARGV != 1 || ! -e $ARGV[0]) {
  die "Usage: perl gmpdoc2yml.pl /path/to/gmp.html\n";
}

my $filename = $ARGV[0];

my @blacklist = @{LoadFile('conf/blacklist.yml')};

my %c_to_nci_mappings  = %{LoadFile('conf/mappings.yml')};
my %nci_to_winxed_mappings = (
  v => '',
  i => 'int',
  l => 'int', # TODO: should a long be an int or a float in Winxed?
  d => 'float',
  p => 'var'
);

my $functions = process_gmp_docs($filename);
print_winxed($functions);

sub process_gmp_docs {
  my $filename = shift;
  my @all_functions;

  my $raw_gmp_docs = read_file( $filename );
  $raw_gmp_docs =~ s/&mdash;/-/g;
  $raw_gmp_docs =~ s/&nbsp;/ /g;
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
    next if $function !~ m/- Function:/;
    my $description = $_->{'description'};
    my $raw_description = $_->{'raw_description'};
    $function = substr($function, 0, length($function) - length($raw_description) - 25);
    $function =~ s/^Function:  //g;
    my @functions_in_description = grep {!/^$/} split / - Function: /, $function, -1;
    my @parsed_functions;
    foreach (@functions_in_description) {
      my ($return_type, $function_name, $parameters) = /([^<]+) <b>([^<]+)<\/b> \(<var>([^<]+)<\/var>\)/;
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

  # TODO: refactor this prefix out into a conf file from here
  # and from gmph2ncidef.pl
  my $prefix = '_?mpz';

  foreach (@{$functions}) {
    # print documentation
    my $description = $_->{'description'};
    print "/*\n";
    foreach(@{$_->{'functions'}}) {
      # TODO: skip blacklisted functions
      my $signature = join ", ", map { "$_->{'type'} $_->{'name'}" } @{$_->{'params'}};
      # TODO: refactor into Template::Toolkit
      print "=head1 $_->{'return_type'} $_->{'function_name'} ($signature)\n";
    }
    print "$description\n=cut\n*/\n\n";
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
    die("incorrect type for $_->{'name'} in $function_name");
EOF
        }
      }
      # print actual function calling code
      my $nci_signature = join ", ", map { $_->{'name'} } @{$_->{'params'}};
      my $internal_function_name = "__g$function_name";
      print <<EOF;
  using gmp.$internal_function_name;
  $internal_function_name($nci_signature);
}

EOF
    }
  }
}

sub c_to_winxed_mapping {
  my $c_type = shift;
  my $nci_type;

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
