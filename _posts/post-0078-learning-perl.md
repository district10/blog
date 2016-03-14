% Learning Perl
% TANG ZhiXiong
% 2015-12-17

Learning Perl
=============

## Introduction

Perl is sometimes called the “Practical Extraction and Report Language,”
although it has also been called a “Pathologically Eclectic Rubbish Lister,”
among other expan- sions. It’s actually a backronym, not an acronym, since
Larry Wall, Perl’s creator, came up with the name first and the expansion
later. That’s why “Perl” isn’t in all caps.  There’s no point in arguing which
expansion is correct: Larry endorses both.  You may also see “perl” with a
lowercase p in some writing. In general, “Perl” with a capital P refers to the
language and “perl” with a lowercase p refers to the actual inter- preter that
compiles and runs your programs. In the house style, we write the names of
programs like perl.

CPAN is the Comprehensive Perl Archive Network, your one-stop shopping for Perl.
It has the source code for Perl itself, ready-to-install ports of Perl to all sorts of non-
Unix systems, † examples, documentation, extensions to Perl, and archives of messages
about Perl. In short, CPAN is comprehensive.

perldoc

Programming Perl

```perl
#!/usr/bin/perl
print "Hello, world!\n";
```

`.pl`, `.plx` (mening PerL eXecutable)


```perl
#!/usr/bin/env perl

use 5.010;          # Perl 5.10

say "Hello World!";
```

```perl
#!/usr/bin/perl
@lines = `perldoc -u -f atan2`;
foreach (@lines) {
    s/\w<([^>]+)>/\U$1/g;
    print;
}
```

## Scalar Data

Larry: `$calar` & `@rray`.

```perl
1.25
255.000
255.0
7.25e45 # 7.25 times 10 to the 45th power (a big number)
–6.5e24 # negative 6.5 times 10 to the 24th
        # (a big negative number)
–12e–24 # negative 12 times 10 to the –24th
        # (a very small negative number)
–1.2E–23 # another way to say that the E may be uppercase

0377 # 377 octal, same as 255 decimal
0xff # FF hex, also 255 decimal
0b11111111 # also 255 decimal

0x1377_0B77
0x50_65_72_7C

2 + 3 # 2 plus 3, or 5
5.1 – 2.4 # 5.1 minus 2.4, or 2.7
3 * 12 # 3 times 12 = 36
14 / 2 # 14 divided by 2, or 7
```

```perl
use utf8;

# Single-Quoted String Literals
'fred' # those four characters: f, r, e, and d
'barney' # those six characters
'' # the null string (no characters)
'⅚∞☃☠' # Some "wide" Unicode characters
'Don\'t let an apostrophe end this string prematurely!'
'the last character is a backslash: \\'
'hello\n' # hello followed by backslash followed by n
'hello
there' # hello, newline, there (11 characters total)
'\'\\' # single quote followed by backslash

# Double-Quoted String Literals
"barney" # just the same as 'barney'
"hello world\n" # hello world, and a newline
"The last character of this string is a quote mark: \""
"coke\tsprite" # coke, a tab, and sprite
"\x{2668}" # Unicode HOT SPRINGS character code point
```

Construct | Meaning
--------- | -------
`\n` | Newline
`\r` | Return
`\t` | Tab
`\f` | Formfeed
`\b` | Backspace
`\a` | Bell
`\e` | Escape (ASCII escape character)
`\007` | Any octal ASCII value (here,  007 = bell)
`\x7f` | Any hex ASCII value (here,  7f = delete)
`\x{2744}` | Any hex Unicode code point (here,  U+2744 = snowflake)
`\cC` | A “control” character (here, Ctrl-C)
`\\` | Backslash
`\"` | Double quote
`\l` | Lowercase next letter
`\L` | Lowercase all following letters until  \E
`\u` | Uppercase next letter
`\U` | Uppercase all following letters until  \E
`\Q` | Quote nonword characters by adding a backslash until  \E
`\E` | End  \L ,  \U , or  \Q


```perl
"hello" . "world" # same as "helloworld"
"hello" . ' ' . "world" # same as 'hello world'
'hello world' . "\n" # same as "hello world\n"

"fred" x 3 # is "fredfredfred"
"barney" x (4+1) # is "barney" x 5, or "barneybarneybarneybarneybarney"
5 x 4.8 # is really "5" x 4, which is "5555"

0377 # that's octal for 255 decimal
'0377' # that's 377 decimal
"Z" . 5 * 7 # same as "Z" . 35, or "Z35"
```

```perl
#!/usr/bin/perl

use warnings;
```

`perl -w my_program`{.perl}, shebang: `#!/usr/bin/perl -w`{.perl}

```perl
#!/usr/bin/perl

use diagnostics;
```

module: `perl -Mdiagnostics ./my_program`{.perl}

```perl
$résumé
$coördinate
```

```perl
print "The answer is ", 6 * 7, ".\n";

$what = "brontosaurus steak";
$n = 3;
print "fred ate $n $whats.\n"; # not the steaks, but the value of $whats
print "fred ate $n ${what}s.\n"; # now uses $what
print "fred ate $n $what" . "s.\n"; # another way to do it
print 'fred ate ' . $n . ' ' . $what . "s.\n"; # an especially difficult way

$alef = chr( 0x05D0 );
$alpha = chr( hex('03B1') );
$omega = chr( 0x03C9 );

$code_point = ord( '囧' );
That might be more work than interpolating them directly by putting the hexadecimal
representation in  \x{} :
"\x{03B1}\x{03C9}"
```


```perl
if ($name gt 'fred') {
    print "'$name' comes after 'fred' in sorted order.\n";
} else {
    print "'$name' does not come after 'fred'.\n";
    print "Maybe it's the same string, in fact.\n";
}

# gt, eq 
```


```perl
chomp($text = <STDIN>);

$count = 0;
while ($count < 10) {
    $count += 2;
    print "count is now $count\n"; # Gives values 2 4 6 8 10
}

$madonna = <STDIN>;
if ( defined($madonna) ) {
    print "The input was $madonna";
} else {
    print "No input available!\n";
}
```

## List and Arrays

```perl
$blank = $fred[ 142_857 ]; # unused array element gives undef
$blanc = $mel; # unused scalar $mel also gives undef

$rocks[0] = 'bedrock'; # One element...
$rocks[1] = 'slate'; # another...
$rocks[2] = 'lava'; # and another...
$rocks[3] = 'crushed rock'; # and another...
$rocks[99] = 'schist'; # now there are 95 undef elements

$end = $#rocks; # 99, which is the last element's index
$number_of_rocks = $end + 1; # okay, but you'll see a better way later
$rocks[ $#rocks ] = 'hard rock'; # the last rock

$rocks[ –1 ] = 'hard rock'; # easier way to do that last example
$dead_rock = $rocks[–100]; # gets 'bedrock'
$rocks[ –200 ] = 'crystal'; # fatal error!

(1, 2, 3) # list of three values 1, 2, and 3
(1, 2, 3,) # the same three values (the trailing comma is ignored)
("fred", 4.5) # two values, "fred" and 4.5
( ) # empty list - zero elements
(1..100) # list of 100 integers

(1..5) # same as (1, 2, 3, 4, 5)
(1.7..5.7) # same thing; both values are truncated
(5..1) # empty list; .. only counts "uphill"
(0, 2..6, 10, 12) # same as (0, 2, 3, 4, 5, 6, 10, 12)
($m..$n) # range determined by current values of $m and $n
(0..$#rocks) # the indices of the rocks array from the previous section

# the qw Shortcut
qw( fred barney betty wilma dino ) # same as above, but less typing

qw! fred barney betty wilma dino !
qw/ fred barney betty wilma dino /
qw# fred barney betty wilma dino # # like in a comment!
qw( fred barney betty wilma dino )
qw{ fred barney betty wilma dino }
qw[ fred barney betty wilma dino ]
qw< fred barney betty wilma dino >

# easier to read
qw(
    fred
    barney
    betty
    wilma
    dino
)
```

```perl
($fred, $barney, $dino) = ("flintstone", "rubble", undef);

($fred, $barney) = ($barney, $fred); # swap those values
($betty[0], $betty[1]) = ($betty[1], $betty[0]);

($fred, $barney) = qw< flintstone rubble slate granite >; # two ignored items
($wilma, $dino) = qw[flintstone]; # $dino gets undef

($rocks[0], $rocks[1], $rocks[2], $rocks[3]) = qw/talc mica feldspar quartz/;

@rocks = qw/ bedrock slate lava /;
@tiny = ( ); # the empty list
@giant = 1..1e5; # a list with 100,000 elements
@stuff = (@giant, undef, @giant); # a list with 200,001 elements
$dino = "granite";
@quarry = (@rocks, "crushed rock", @tiny, $dino);

@array = 5..9;
$fred = pop(@array); # $fred gets 9, @array now has (5, 6, 7, 8)
$barney = pop @array; # $barney gets 8, @array now has (5, 6, 7)
pop @array; # @array now has (5, 6). (The 7 is discarded.)

push(@array, 0); # @array now has (5, 6, 0)
push @array, 8; # @array now has (5, 6, 0, 8)
push @array, 1..10; # @array now has those 10 new elements
@others = qw/ 9 0 2 1 0 /;
push @array, @others; # @array now has those five new elements (19 total)

@array = qw# dino fred barney #;
$m = shift(@array); # $m gets "dino", @array now has ("fred", "barney")
$n = shift @array; # $n gets "fred", @array now has ("barney")
shift @array; # @array is now empty
$o = shift @array; # $o gets undef, @array is still empty
unshift(@array, 5); # @array now has the one-element list (5)
unshift @array, 4; # @array now has (4, 5)
@others = 1..3;
unshift @array, @others; # @array now has (1, 2, 3, 4, 5)

@array = qw( pebbles dino fred barney betty );
@removed = splice @array, 2; # remove everything after fred
                             # @removed is qw(fred barney betty)
                             # @array is qw(pebbles dino)

@array = qw( pebbles dino fred barney betty );
@removed = splice @array, 1, 2; # remove dino, fred
                                # @removed is qw(dino fred)
                                # @array is qw(pebbles barney betty)

@array = qw( pebbles dino fred barney betty );
@removed = splice @array, 1, 2, qw(wilma); # remove dino, fred
                                           # @removed is qw(dino fred)
                                            # @array is qw(pebbles wilma
                                            # barney betty)

@array = qw( pebbles dino fred barney betty );
@removed = splice @array, 1, 0, qw(wilma); # remove nothing
                                            # @removed is qw()
                                            # @array is qw(pebbles wilma dino
                                            # fred barney betty)
```

Interpolating Arrays into Strings

```perl
@rocks = qw{ flintstone slate rubble };
print "quartz @rocks limestone\n";
# prints "quartz flintstone slate rubble limestone"
```

## Subroutines

## Input and Output

## Hashes

## In the World of Regular Expressions

## Matching with Regular Expressions

## Processing Text with Regular Expressions

## More Control Structures

## Perl Modules

## File Tests


## Directory Operations

## Strings and Sorting

## Smart Matching and given-when

## Processing Management

## Some Advanced Perl Techniques


## A. Exercise Answers

## B. Beyond the Llama
## C. A Unicode Primer


---

codes

```perl
chomp(@lines = <STDIN>)
```
