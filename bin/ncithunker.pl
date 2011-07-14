#!/usr/bin/perl

use strict;
use warnings;

use File::Spec;

if (scalar @ARGV != 2 || ! -d $ARGV[0] || ! -e $ARGV[1]) {
  die "Usage: perl $0 /path/to/parrot /path/to/definition.nci\n";
}

my $parrot_dir = $ARGV[0];
my $nci_def = $ARGV[1];

my $available_signatures;
my $needed_signatures;

my @parrot_nci_files;
push @parrot_nci_files, File::Spec->catfile($parrot_dir, 'src', 'nci', 'core_thunks.nci');
push @parrot_nci_files, File::Spec->catfile($parrot_dir, 'src', 'nci', 'extra_thunks.nci');

# read in all available thunks
# read in custom definition file
#   if there isn't an available thunk throw it in needed_signatures
# print out properly formatted NCI definition file for parrot_nci_thunk_gen

foreach my $parrot_nci_file (@parrot_nci_files) {
  if (! -e $parrot_nci_file) {
    die "Cannot read $parrot_nci_file\n";
  }

  open(my $fh, '<', $parrot_nci_file);
  while(<$fh>) {
    next if $_ =~ m/^$/;
    next if $_ =~ m/^#/;
    $_ =~ s/#.*$//;
    $_ =~ s/\s+//g;
    $available_signatures->{$_} = 1;
  }

  close $fh;
}

open(my $fh, '<', $nci_def);

my $section;

while(<$fh>) {
  next if $_ =~ m/^$/;
  if ($_ =~ m/\[(\w+)\]/) {
    $section = $1;
    next;
  }

  if ($section eq 'defs') {
    my ($return_type, $func_name, $params) = split /\s+/, $_, 4;
    my $nci_sig = $return_type . $params;
    if (!exists $available_signatures->{$nci_sig}) {
      $needed_signatures->{$nci_sig} = 1;
    }
  } else {
    next;
  }
}

foreach(keys %{$needed_signatures}) {
  my $return_type = substr($_, 0, 1);
  my $params      = substr($_, 1, length($_) - 1);
  print "$return_type\t$params\n";
}
