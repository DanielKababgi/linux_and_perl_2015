#!/usr/bin/perl

use strict;
use warnings;

my $filename = "fasta.txt";
my %sequence = ();
my $key = "";

open FASTA, $filename or die "$filename $!"; 

while (<FASTA>)
{
    if($_ =~ /^>/)
    {
	$sequence{"$_"} = "";
	$key = $_;
    }
    else
    {
	$sequence{$key} = $sequence{$key}.$_; 
    }
}

close FASTA or die;


1;
