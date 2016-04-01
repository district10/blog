#!/usr/bin/env perl

use strict;
use 5.010;

my $header = <<__;
% Sitemap | 站点地图
% TANG ZhiXiong
% 2016-04-01

Sitemap | 站点地图
==================

__

print $header;

open TXT,  '>', "sitemap.txt";

my @entries = `ls *.html`;
push @entries, "sitemap.html";

foreach my $url (@entries) {
    $url =~ s/\r?\n?$//g;
    my $title = $url;
    $title =~ s/\.html$//;
    print "- [$title]($url)\n";
    print TXT "http://tangzx.qiniudn.com/$url\n"
}
