#!/usr/bin/perl

use strict;
use warnings;

open FASTA, "fasta.txt" or die; 

my $line;
my $input;

while ($line=<FASTA>)
{
    $input = grep /^>(\w+)\s(\w+)/, $line;
    my ($id,$specie) = ($1, $2);
    print "$id";
    print "$specie";
}

close FASTA or die; 
