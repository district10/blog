#!/usr/bin/env perl

exit unless `whoami` =~ /travis/;

my @mods = `git diff-tree --no-commit-id --name-only -r HEAD`;
push @mods, "footer.html\n";
push @mods, "filter.pl\n";
push @mods, "Makefile\n";

my $hits = join '', @mods;
print "files to protect [\n", $hits, "]\n";

my @all_pubs = <*>;
foreach (@all_pubs) {
    unlink $_ unless $hits =~ /($_)/;
}
