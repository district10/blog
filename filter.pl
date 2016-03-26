#!/usr/bin/env perl

use strict;
use File::Copy qw(copy);

exit unless `whoami` =~ /travis/;

my @mods = `git diff-tree --no-commit-id --name-only -r HEAD`;
foreach (@mods) {
    next if $_ =~ /filter.pl/;
    chomp;
    my $src= '../' . $_;
    $_ =~ s:.*/::;
    copy $src, $_;
}
push @mods, "footer.html";
push @mods, "filter.pl";
push @mods, "Makefile";
push @mods, "ring.html";
push @mods, "tags.html";
push @mods, "reads.html";

my $hits = join "\t", @mods;
print "files to protect [\n\t", $hits, "]\n";

my @all_pubs = <*>;
foreach (@all_pubs) {
    unlink $_ unless $hits =~ /($_)/;
}
