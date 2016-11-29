#!/usr/bin/perl

use 5.010;
use strict;
use Digest::MD5 qw(md5_hex);
use autodie;

sub md5id {
    my $id = md5_hex($_);
    $id =~ s/^../ZX/;
    $id =~ s/.$/T/;
    return $id;
}

if (@ARGV < 4) {
    print $ARGV;
    die "Usage:\n\tperl eoar.pl in.md out.md out.tags out.changes\n";
}

open IMD,           '<', $ARGV[0]; # input markdown file
open RDL,           '>', $ARGV[1]; # output reading list
open TAGS,          '>', $ARGV[2]; # output tags
open CHANGES,       '>', $ARGV[3]; # changes

my $filename = $ARGV[0];
$filename =~ s:.*[/\\]::;
$filename =~ s:.md$:.html:;
my $filenamehash = ""; # &md5id($filename);
my $curAnchor;
my $level = 0;
my $codeId = 0;
my $verb = 0;
while (<IMD>) {
    print;
    next;
}

# print header to file.changes
print CHANGES <<EOF;
---
tzx-changes:
EOF

my $hash;
my $datetime;
my $filename;
my $insertions;
my $deletions;

#              git whatchanged -p filename
#              git log -p filename
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

close IMD;
close RDL;
close TAGS;
close CHANGES;
