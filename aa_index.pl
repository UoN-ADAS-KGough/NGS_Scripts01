#!/usr/bin/perl
use strict;
use warnings;

if(!defined $ARGV[1]){
    print "\nError in arguments - no file or position?\n\n";exit;
}


open (FASTA1, "<$ARGV[0]") or die ("Failed to open file: $!\n");


my $aa_position=$ARGV[1]; # which amino acid we are interested in
my $aa_index = $aa_position -1 ; # convert e.g. position 1-16 to index 0-15

my @seqData  = (); #array to hold the collected amino acids
my $want_length=16; # look only at sequences this long

while (my $sequence = <FASTA1>) {

if ($sequence !~ /^>+/) {
chomp $sequence;
my $length = length $sequence;

if ($length == $want_length)
{ 
my $aa_substr = substr($sequence, $aa_index,1); 
push @seqData,$aa_substr;
}

}
}

my $joinedpos1=join "", @seqData;
my $lengthpos1 = length $joinedpos1 ;

my $A = $joinedpos1 =~ tr/A//;
my $C = $joinedpos1 =~ tr/C//;
my $D = $joinedpos1 =~ tr/D//;
my $E = $joinedpos1 =~ tr/E//;
my $F = $joinedpos1 =~ tr/F//;
my $G = $joinedpos1 =~ tr/G//;
my $H = $joinedpos1 =~ tr/H//;
my $I = $joinedpos1 =~ tr/I//;
my $K = $joinedpos1 =~ tr/K//;
my $L = $joinedpos1 =~ tr/L//;
my $M = $joinedpos1 =~ tr/M//;
my $N = $joinedpos1 =~ tr/N//;
my $P = $joinedpos1 =~ tr/P//;
my $Q = $joinedpos1 =~ tr/Q//;
my $R = $joinedpos1 =~ tr/R//;
my $S = $joinedpos1 =~ tr/S//;
my $T = $joinedpos1 =~ tr/T//;
my $V = $joinedpos1 =~ tr/V//;
my $W = $joinedpos1 =~ tr/W//;
my $Y = $joinedpos1 =~ tr/Y//;
my $o = $joinedpos1 =~ tr/o//;
my $p = $joinedpos1 =~ tr/p//;
my $q = $joinedpos1 =~ tr/q//;

my $percentA = ($A / $lengthpos1) *100;
my $percentC = ($C / $lengthpos1) *100;
my $percentD = ($D / $lengthpos1) *100;
my $percentE = ($E / $lengthpos1) *100;
my $percentF = ($F / $lengthpos1) *100;
my $percentG = ($G / $lengthpos1) *100;
my $percentH = ($H / $lengthpos1) *100;
my $percentI = ($I / $lengthpos1) *100;
my $percentK = ($K / $lengthpos1) *100;
my $percentL = ($L / $lengthpos1) *100;
my $percentM = ($M / $lengthpos1) *100;
my $percentN = ($N / $lengthpos1) *100;
my $percentP = ($P / $lengthpos1) *100;
my $percentQ = ($Q / $lengthpos1) *100;
my $percentR = ($R / $lengthpos1) *100;
my $percentS = ($S / $lengthpos1) *100;
my $percentT = ($T / $lengthpos1) *100;
my $percentV = ($V / $lengthpos1) *100;
my $percentW = ($W / $lengthpos1) *100;
my $percentY = ($Y / $lengthpos1) *100;
my $percento = ($o / $lengthpos1) *100;
my $percentp = ($p / $lengthpos1) *100;
my $percentq = ($q / $lengthpos1) *100;

my $index1 = $aa_index +1;
print ".\t" . ".\t" . "$index1\n";

print "A\t$A\t";
printf ("%.2f", "$percentA");
print "\n";

print "C\t$C\t";
printf ("%.2f", "$percentC");
print "\n";

print "D\t$D\t";
printf ("%.2f", "$percentD");
print "\n";

print "E\t$E\t";
printf ("%.2f", "$percentE");
print "\n";
####
print "F\t$F\t";
printf ("%.2f", "$percentF");
print "\n";

print "G\t$G\t";
printf ("%.2f", "$percentG");
print "\n";

print "H\t$H\t";
printf ("%.2f", "$percentH");
print "\n";

print "I\t$I\t";
printf ("%.2f", "$percentI");
print "\n";
###
print "K\t$K\t";
printf ("%.2f", "$percentK");
print "\n";

print "L\t$L\t";
printf ("%.2f", "$percentL");
print "\n";

print "M\t$M\t";
printf ("%.2f", "$percentM");
print "\n";

print "N\t$N\t";
printf ("%.2f", "$percentN");
print "\n";
####
print "P\t$P\t";
printf ("%.2f", "$percentP");
print "\n";

print "Q\t$Q\t";
printf ("%.2f", "$percentQ");
print "\n";

print "R\t$R\t";
printf ("%.2f", "$percentR");
print "\n";

print "S\t$S\t";
printf ("%.2f", "$percentS");
print "\n";
#
print "T\t$T\t";
printf ("%.2f", "$percentT");
print "\n";

print "V\t$V\t";
printf ("%.2f", "$percentV");
print "\n";

print "W\t$W\t";
printf ("%.2f", "$percentW");
print "\n";

print "Y\t$Y\t";
printf ("%.2f", "$percentY");
print "\n";
### stop
print "ochre(o)\t$o\t";
printf ("%.2f", "$percento");
print "\n";

print "opal(p)\t$p\t";
printf ("%.2f", "$percentp");
print "\n";

print "amber(q)\t$q\t";
printf ("%.2f", "$percentq");
print "\n";
