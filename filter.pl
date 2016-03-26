#!/usr/bin/env perl

use strict;
use 5.010;
use File::Copy qw(copy);

exit unless `whoami` =~ /travis/;

my @mods = `git diff-tree --no-commit-id --name-only -r HEAD`;
push @mods, "footer.html";
push @mods, "filter.pl";
push @mods, "Makefile";
push @mods, "ring.html";
push @mods, "tags.html";
push @mods, "reads.html";
foreach (@mods) {
    next if $_ =~ /filter.pl/;
    chomp;
    my $src= '../' . $_;
    $_ =~ s:.*/::;
    next if -e $_;
    copy $src, $_;
}

my $hits = join "\t", @mods;
print "files to protect [\n\t", $hits, "]\n";

my @all_pubs = <*>;
foreach (@all_pubs) {
    unlink $_ unless $hits =~ /($_)/;
}
