#!/usr/bin/perl

use strict;
use warnings;

my $filename = "fasta.txt";
open FASTA, $filename or die "$filename $!"; 

while (<FASTA>)
{
    if($_ =~ /^>(\w+)\s(\w+)/)
    {
	print "$_";
    }

#    print "$_"; 
}

close FASTA or die;

1;
