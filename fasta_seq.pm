package fasta_seq;

use strict;
use warnings;

sub new
{
    my $self = {};
    bless $self,"fasta_seq";
    return $self;
}

sub id
{
    my $self = {};
    return "ralph";
}

1;

