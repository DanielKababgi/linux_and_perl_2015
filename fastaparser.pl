#!/usr/bin/perl

use strict;
use warnings;

my $filename = "fasta.txt";
my %sequence = ();

open FASTA, $filename or die "$filename $!"; 

while (<FASTA>)
{
    if($_ =~ /^>/)
    {
	$sequence{"$_"} = "";
    } 
}

close FASTA or die;


