#!/usr/bin/perl

# Nmer fasta filter
# Can be used to retain all FASTA IDs and sequences from a file where
# the length of the sequence matches a user definded integer
# e.g. perl Nmerfastafilter.pl --infile XXX.fasta --outfile YYY.fasta --length 16


use strict;
use warnings;
use Getopt::Long;

my $version = "1.0";
my $help=0;


my $infile ="";
my $outfile ="";
my $length = "";

my $usage = <<"USAGE";

Nmerfastafilter.pl

Nmer fasta filter
Can be used to retain all FASTA IDs and sequences from a file where
the length of the sequence matches a user definded integer
e.g. perl Nmerfastafilter.pl --infile XXX.fasta --outfile YYY.fasta --length 16

Version: $version

USAGE

GetOptions
(
    "infile=s" 	 => \$infile,
    "outfile=s"  => \$outfile,
    "length=i"   => \$length,
    "help"       => \$help
) or die("Error in command line arguments\n");

if ( $help == 1 ) {
    print $usage;
    exit;
}

my $ID="";
my $sequence="";

open( my $fh, '>', $outfile) or die "Could not open file '$outfile' $!";

open (FASTA, "$infile") or die ("Failed to open file: $!\n");

while (my $fasta = <FASTA>) {
	
chomp $fasta;

if ($fasta =~ /^>.+/) {$ID = $fasta;}
else {$sequence = $fasta};

my $seq_len = length $sequence;

if ($ID ne "" && $sequence ne "" && $seq_len == $length){
print $fh "$ID\n$sequence\n"; $ID = ""; $sequence =""; }

}
