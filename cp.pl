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

if (@ARGV < 3) {
    print $ARGV;
    die "Usage:\n\tperl eoar.pl in.md out.md out.tags\n";
}

open IMD,  '<', $ARGV[0]; # input markdown file
open RDL,  '>', $ARGV[1]; # output reading list
open TAGS, '>', $ARGV[2]; # output tags

my $filename = $ARGV[0];
$filename =~ s:.*[/\\]::;
$filename =~ s:.md$:.html:;
my $filenamehash = &md5id($filename);
my $curAnchor;
my $level = 0;
my $codeId = 0;
my $verb = 0;
while (<IMD>) {
    my $line = $_;

    # real, verbatim
    if ($verb == 1 && ! /^\s*-->\s*/) { next; }                                         # inside
    if ($verb == 0 && /^\s*<!--.*?-->\s*$/) { next; }                                   # oneline
    if ($verb == 0 && /^\s*<!--/) { $verb = 1; next; }                                  # get in
    if ($verb == 1 && /^\s*-->\s*/) { $verb = 0; next if <IMD> =~ /^\s*$/; next; }      # get out

    # code, verbatim
    if ($level > 0) {
        if ( $line =~ /^\s*(```[`\s]*)$/ ||
             $line =~ /^\s*(~~~[~\s]*)$/ )
        {
            die if --$level < 0;
            my $end = '~~~' x ($level+1);
            $line =~ s/${1}/$end/;
        }
        $line =~ s/\r?\n?$//;
        print $line . "\n";
        next;
    }

    # page ref
    if (/^(.*)\[(.*?)\]\(#(.*?)\)(.*)$/) {
        $line = $1 . '[' . $2 . '](#' . $filenamehash . $3 . ")$4";
        $line =~ s/\r?\n?$//;
        print $line . "\n";
        next;
    }
    
    # page anchor
    if (/^(.*)`@`\{\.tzx-anchor #(.*)\}(.*)$/) {
        $line = $1 . '`@`{.tzx-anchor #' . $filenamehash . $2 . '}' . $3;
        $line =~ s/\r?\n?$//;
        print $line . "\n";
        next;
    }
    

    # tags
    if (/(\s*)<#(.*?)>(.*)/) {
        my $prefix = $1 // "";
        my $anchor = $2 // "";
        $line =~ s/.*<#.*?>//;
        if ($anchor) { # grab anchor
            print TAGS $filename, '#', $anchor, ': ', $line;
            print $prefix . '`@`{.tzx-anchor #' . $filenamehash . $anchor . '}' . "\n";
            next;
        }

        # use last captured anchor
        if (!$curAnchor) {
            # gen anchor
            $curAnchor = &md5id($line);
            print $prefix . '`@`{.tzx-anchor #' . $filenamehash . $curAnchor . '}' . "\n";
            print TAGS $filename, '#', $curAnchor, ': ', $line;
            next;
        }

        print TAGS $filename, '#', $curAnchor, ': ', $line;
        next if <IMD> =~ /^\s*$/;
        next;
    }

    # one reading material
    if (/^\[.*?\]\((.*)\).*$/) {
        $line =~ s/\r?\n?$//;
        my $mdurl = $line;
        $mdurl =~ s/^\s+|\s+$//g;
        my $hex = &md5id($mdurl);
        print $line, ' `@`{.tzx-anchor #' . $hex . '}' . "\n";
        print RDL '- ', $line, ' [☯](' . $filename . '#' . $hex . ")\n";
        $curAnchor = $hex;
        next;
    }

    # assume $level = 0;
    if (/^\s*(```)(.*)$/) {
        ++$level;
        $line =~ s/${1}.*\r?\n?$/~~~/;
        my @options = ();
        my $lang = ${2} // "";
        if ($lang) { $lang = '.' . $lang; }
        my $id = '#auto-listing-' . ++$codeId;
        push @options, $lang;
        push @options, $id;
        my $suffix = join(' ', @options);
        $suffix =~ s/^\s+|\s+$//g;
        $suffix = ' {' . $suffix . '}';
        print $line, $suffix, "\n";
        next;
    }

    if (/^\s*(~~~~*)(.*)$/) {
        ++$level;
        my $options = ${2} // "";
        $line =~ s/${1}.*\r?\n?$/~~~/;
        $options =~ s/.*{//g;
        $options =~ s/}.*//g;
        if (! /#/) {
            my $id = '#auto-listing-' . ++$codeId;
            $options = $id . ' ' . $options;
        }
        $options =~ s/^\s+|\s+$//g;
        if ($options) {
            $options = ' {' . $options . '}';
        }
        print $line, $options, "\n";
        next;
    }

    if (/^\s*(<small>\s*)+\s*$/) {
        $line =~ s/\r?\n?$//;
        print $line . "\n";
        print "\n";
        next;
    }
    if (/^\s*(<\/small>\s*)+\s*$/) {
        print "\n";
        $line =~ s/\r?\n?$//;
        print $line . "\n";
        next;
    }

    $line =~ s/\r?\n?$//;
    print $line . "\n";
}

close IMD;
close RDL;
close TAGS;
