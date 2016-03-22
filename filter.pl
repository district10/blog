#!/usr/bin/env perl

exit unless `whoami` =~ /travis/;

my @mods = `git diff-tree --no-commit-id --name-only -r HEAD`;
push @mods, 'footer.html';
push @mods, 'filter.pl';
push @mods, 'Makefile';

my $hits = join '', @mods;
print "files modified: [\n", $hits, "]\n";

my @all_pubs = <*>;
foreach (@all_pubs) {
    unlink $_ unless $hits =~ /($_)/;
}
