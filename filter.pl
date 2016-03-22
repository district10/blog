#!/usr/bin/env perl

exit unless `whoami` =~ /travis/;

my @mods = `git diff-tree --no-commit-id --name-only -r HEAD`;
push @mods, 'footer.html';
push @mods, 'filter.pl';
push @mods, 'Makefile';
print 'files modified: @mods.\n';

my $hits = join '', @mods;
my @all_pubs = <*>;
foreach (@all_pubs) {
    unlink $_ unless $hits =~ /($_)/;
}
