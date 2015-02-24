#!/usr/bin/perl

use strict;
use warnings;

my $filename = "fasta.txt";
open FASTA, $filename or die "$filename $!"; 

while (<FASTA>)
{
    print "$_"; 
}

close FASTA or die;

1;
