#!/usr/bin/perl

use 5.014;
use strict;
use Data::Dumper;
$Data::Dumper::Indent = 1;

my %tag2ref;
while(<>) {
    chomp;
    next if ! /^(.*?): ((.*))$/;
    my $ref = $1;
    my @tags = split /\s/, $2;
    foreach (@tags) {
        my $tag = $_;
        $tag =~ s/^.*?@|[\s)]*//g;
        print '- [' . $tag . '](' . $ref . ")\n";
    }
}
