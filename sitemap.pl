#!/usr/bin/env perl

use strict;
use autodie;
use 5.010;

my $mdheader = <<__;
% Sitemap | 站点地图
% TANG ZhiXiong
% 2016-04-01

Sitemap | 站点地图
==================

__

my $xmlheader = <<__;
<?xml version="1.0" encoding="UTF-8"?>
<urlset
      xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9
            http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
<!-- created by TANG ZhiXiong (http://tangzx.qiniudn.com) with perl. -->

__

open TXT,  '>', "sitemap.txt";
open XML,  '>', "sitemap.xml";

print $mdheader;
print XML $xmlheader;

my @entries = `ls *.html`;
push @entries, "sitemap.html";

foreach my $url (@entries) {
    $url =~ s/\r?\n?$//g;
    my $title = $url;
    $title =~ s/\.html$//;
    print "- [$title]($url)\n";
    print TXT "http://tangzx.qiniudn.com/$url\n";
    print XML "<url>\n  <loc>http://tangzx.qiniudn.com/$url</loc>\n</url>\n";
}

print XML "</urlset>\n";
