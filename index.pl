#!/usr/bin/perl

use 5.010;
use strict;

while(<>) {
    chomp;
    next if ! /^(.*?): ((.*))$/;
    my $ref = $1;
    my $tags = $2;
    print $tags . "oooo\n";
    s/^.|.$//g;
    my @tags = split /\s/, $tags;
    foreach (@tags) {
    # s/^.//;
        print $_ . "\n";
    }
}
