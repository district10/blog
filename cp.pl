#!/usr/bin/perl

use 5.010;
use strict;
use autodie;

if (@ARGV < 2) {
    print $ARGV;
    die "Usage:\n\tperl cp.pl in.md out.changes > out.md\n";
}

open IMD,           '<', $ARGV[0]; # input markdown file
while (<IMD>) {
    print;
    next;
}
close IMD;

open CHANGES,       '>', $ARGV[1]; # changes
my $hash;
my $datetime;
my $filename;
my $insertions;
my $deletions;
# print header to file.changes
print CHANGES <<EOF;
---
tzx-changes:
EOF
my $changes = `git log --stat --pretty=format:%H-%at $ARGV[0]`;
my @lines = split /\n/, $changes;
foreach (@lines) {
    if (/^(.{40})-(\d{10})/) {
        $hash = $1;
        $datetime = $2;
    }
    if (/^ (.*) \|/) {
        $filename = $1;
    }
    if (/file changed/) {
        $insertions = 0;
        $deletions = 0;
        $insertions = $1 if /, (\d+) insertion/;
        $deletions  = $1 if /, (\d+) deletion/;
        # print CHANGES "  - $hash, $datetime, $insertions, $deletions\n";
        print CHANGES "  - hash: $hash\n    datetime: $datetime\n    insertions: $insertions\n    deletions: $deletions\n";
    }
}
print CHANGES "\ntzx-filename: $filename\n...\n";
close CHANGES;
