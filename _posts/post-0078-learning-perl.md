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

# 总结：删除范围是 `[i, j]`，插入是在 i 前面（新的 *i*th）。
```

limestone `['laɪmston]` 石灰岩

Interpolating Arrays into Strings

```perl
@rocks = qw{ flintstone slate rubble };
print "quartz @rocks limestone\n";
# prints "quartz flintstone slate rubble limestone"

$email = "fred\@bedrock.edu"; # Correct
$email = 'fred@bedrock.edu'; # Another way to do that

@fred = qw(hello dolly);
$y = 2;
$x = "This is $fred[1]'s place"; # "This is dolly's place"
$x = "This is $fred[$y-1]'s place"; # same thing

@fred = qw(eating rocks is wrong);
$fred = "right"; # we are trying to say "this is right[3]"
print "this is $fred[3]\n"; # prints "wrong" using $fred[3]
print "this is ${fred}[3]\n"; # prints "right" (protected by braces)
print "this is $fred"."[3]\n"; # right again (different string)
print "this is $fred\[3]\n"; # right again (backslash hides it)
```

The foreach Control Structure

```perl
foreach $rock (qw/ bedrock slate lava /) {
    print "One rock is $rock.\n"; # Prints names of three rocks
}

@rocks = qw/ bedrock slate lava /;
foreach $rock (@rocks) {
    $rock = "\t$rock"; # put a tab in front of each element of @rocks
    $rock .= "\n"; # put a newline on the end of each
}
print "The rocks are:\n", @rocks; # Each one is indented, on its own line
```

```perl
$rock = 'shale';
@rocks = qw/ bedrock slate lava /;
foreach $rock (@rocks) {
    ...
}
print "rock is still $rock\n"; # 'rock is still shale'
```

Perl's Favorite Default: `$_`

```perl
foreach (1..10) { # Uses $_ by default
    print "I can count to $_!\n";
}

# the reverse operator
@fred = 6..10;
@barney = reverse(@fred); # gets 10, 9, 8, 7, 6
@wilma = reverse 6..10; # gets the same thing, without the other array
@fred = reverse @fred; # puts the result back into the original array

# the sort operator
@rocks = qw/ bedrock slate rubble granite /;
@sorted = sort(@rocks); # gets bedrock, granite, rubble, slate
@back = reverse sort @rocks; # these go from slate to bedrock
@rocks = sort @rocks; # puts sorted result back into @rocks
@numbers = sort 97..102; # gets 100, 101, 102, 97, 98, 99

# the each operator
use 5.012;

@rocks = qw/ bedrock slate rubble granite /;
while( my( $index, $value ) = each @rocks ) {
    say "$index: $value";
}

@rocks = qw/ bedrock slate rubble granite /;
foreach $index ( 0 .. $#rocks ) {
    print "$index: $rocks[$index]\n";
}
```

Scalar and List Context

```perl
42 + something # The something must be a scalar
sort something # The something must be a list
```

```perl
@people = qw( fred barney betty );
@sorted = sort @people; # list context: barney, betty, fred
$number = 42 + @people; # scalar context: 42 + 3 gives 45

@list = @people; # a list of three people
$n = @people; # the number 3
```

Using List-Producing Expressions in Scalar Context

```perl
@backwards = reverse qw/ yabba dabba doo /;
# gives doo, dabba, yabba
$backwards = reverse qw/ yabba dabba doo /;
# gives oodabbadabbay
```

```perl
$fred = something; # scalar context
@pebbles = something; # list context
($wilma, $betty) = something; # list context
($dino) = something; # still list context!
```

Here are some other expressions you’ve seen, and the contexts they provide. First, some
that provide scalar context to something:

```perl
$fred = something;
$fred[3] = something;
123 + something
something + 654
if (something) { ... }
while (something) { ... }
$fred[something] = something;
```

And here are some that provide a list context:

```perl
@fred = something;
($fred, $barney) = something;
($fred) = something;
push @fred, something;
foreach $fred (something) { ... }
sort something
reverse something
print something
```

Using Scalar-Producing Expressions in List Context

```perl
@fred = 6 * 7; # gets the one-element list (42)
@barney = "hello" . ' ' . "world";
```

```perl
@wilma = undef; # OOPS! Gets the one-element list (undef)
# which is not the same as this:
@betty = ( ); # A correct way to empty an array
```

Forcing Scalar Context

```perl
@rocks = qw( talc quartz jade obsidian );
print "How many rocks do you have?\n";
print "I have ", @rocks, " rocks!\n"; # WRONG, prints names of rocks
print "I have ", scalar @rocks, " rocks!\n"; # Correct, gives a number
```

`<STDIN>` in List Context

```perl
@lines = <STDIN>; # Read all the lines
chomp(@lines); # discard all the newline characters

chomp(@lines = <STDIN>); # Read the lines, not the newlines
```

## Subroutines

Defining a Subroutine

```perl
sub marine {
    $n += 1; # Global variable $n
    print "Hello, sailor number $n!\n";
}
```

Invoking a Subroutine

```perl
&marine; # says Hello, sailor number 1!
&marine; # says Hello, sailor number 2!
&marine; # says Hello, sailor number 3!
&marine; # says Hello, sailor number 4!
```

Return Values

```perl
sub sum_of_fred_and_barney {
    print "Hey, you called the sum_of_fred_and_barney subroutine!\n";
    $fred + $barney; # That's the return value
}
```

```perl
$fred = 3;
$barney = 4;
$wilma = &sum_of_fred_and_barney; # $wilma gets 7
print "\$wilma is $wilma.\n";
$betty = 3 * &sum_of_fred_and_barney; # $betty gets 21
print "\$betty is $betty.\n";
```

be careful with your debugging `print`.

Arguments

```perl
$n = &max(10, 15); # This sub call has two parameters

sub max {
    # Compare this to &larger_of_fred_or_barney
    if ($_[0] > $_[1]) {
        $_[0];
    } else {
        $_[1];
    }
}

# but how about `&max(1,3,2)`?
```

Private Variables in Subroutines

```perl
sub max {
    my($m, $n); # new, private variables for this block
    ($m, $n) = @_; # give names to the parameters
    if ($m > $n) { $m } else { $n }
}
```

Variable-Length Parameter Lists

```perl
sub max {
    if (@_ != 2) {
        print "WARNING! &max should get exactly two arguments!\n";
    }
    # continue as before...
    .
    .
    .
}
```

A Better &max Routine

```perl
sub max {
    my($max_so_far) = shift @_; # the first one is the largest yet seen
    foreach (@_) { # look at the remaining arguments
        if ($_ > $max_so_far) { # could this one be bigger yet?
            $max_so_far = $_;
        }
    }
    $max_so_far;
}
```

Empty Parameter Lists

```perl
$maximum = &max(@numbers); # undef
```

Notes on Lexical (my) Variables

```perl
foreach (1..10) {
    my($square) = $_ * $_; # private variable in this loop
    print "$_ squared is $square.\n";
}
```

Note also that the  my operator doesn’t change the context of an assignment:

```perl
my($num) = @_; # list context, same as ($num) = @_;
my $num = @_; # scalar context, same as $num = @_;
```

```perl
my $fred, $barney; # WRONG! Fails to declare $barney
my($fred, $barney); # declares both
```

```perl
foreach my $rock (qw/ bedrock slate lava /) {
    print "One rock is $rock.\n"; # Prints names of three rocks
}
```

The use strict Pragma

```perl
use strict; # Enforce some good programming rules

# Starting with Perl 5.12, you implicitly use this pragma when you declare a
# minimum Perl version:
use 5.012; # loads strict for you
```

The return Operator

```perl
my @names = qw/ fred barney betty dino wilma pebbles bamm-bamm /;
my $result = &which_element_is("dino", @names);
sub which_element_is {
    my($what, @array) = @_;
    foreach (0..$#array) { # indices of @array's elements
        if ($what eq $array[$_]) {
            return $_; # return early once found
        }
    }
    –1; # element not found (return is optional here)
}
```

Omitting the Ampersand

```perl
sub chomp {
    print "Munch, munch!\n";
}
&chomp; # That ampersand is not optional!
```

Non-Scalar Return Values

```perl
sub list_from_fred_to_barney {
    if ($fred < $barney) {
        # Count upwards from $fred to $barney
        $fred..$barney;
    } else {
        # Count downwards from $fred to $barney
        reverse $barney..$fred;
    }
}

Persistent, Private Variable

```perl
sub marine {
    state $n = 0; # private, persistent variable $n
    $n += 1;
    print "Hello, sailor number $n!\n";
}
```

```perl
use 5.010;
running_sum( 5, 6 );
running_sum( 1..3 );
running_sum( 4 );
sub running_sum {
    state $sum = 0;
    state @numbers;
    foreach my $number ( @_ ) {
        push @numbers, $number;
        $sum += $number;
    }
    say "The sum of (@numbers) is $sum";
}
```

## Input and Output

Input from Standard Input

```perl
$line = <STDIN>; # read the next line
chomp($line); # and chomp it

chomp($line = <STDIN>); # same thing, more idiomatically
```

```perl
# much typing
while (defined($line = <STDIN>)) {
    print "I saw $line";
}

# easier to type & read
while (<STDIN>) {
    print "I saw $_";
}

# bulk reading at once
foreach (<STDIN>) {
    print "I saw $_";
}
```

Input from the Diamond Operator


The diamond operator is actually a special kind of line-input operator. But instead of
getting the input from the keyboard, it comes from the user’s choice of input: †

```perl
while (defined($line = <>)) {
    chomp($line);
    print "It was $line that I saw!\n";
}

while (<>) {
    chomp;
    print "It was $_ that I saw!\n";
}
```

The Invocation Arguments

```perl
@ARGV = qw# larry moe curly #; # force these three files to be read
while (<>) {
    chomp;
    print "It was $_ that I saw in some stooge-like file!\n";
}
```

Output to Standard Output

```perl
print @array; # print a list of items
print "@array"; # print a string (containing an interpolated array)
```

```perl
print (2+3)*4; # Oops!
( print(2+3) ) * 4; # Oops!
```

Formatted Output with printf

```perl
printf "Hello, %s; your password expires in %d days!\n",
        $user, $days_to_die;

# "general" numeric conversion
printf "%g %g %g\n", 5/2, 51/17, 51 ** 17; # 2.5 3 1.0683e+29

printf "%6d\n", 42; # output like ````42 (the ` symbol stands for a space)
printf "%2d\n", 2e3 + 1.95; # 2001

printf "%10s\n", "wilma"; # looks like `````wilma
printf "%-15s\n", "flintstone"; # left-justified

printf "%12f\n", 6 * 7 + 2/3; # looks like ```42.666667
printf "%12.3f\n", 6 * 7 + 2/3; # looks like ``````42.667
printf "%12.0f\n", 6 * 7 + 2/3; # looks like ``````````43
```

Arrays and printf

```perl
my @items = qw( wilma dino pebbles );
my $format = "The items are:\n" . ("%10s\n" x @items);
## print "the format is >>$format<<\n"; # for debugging
printf $format, @items;

# even shorted and better
printf "The items are:\n".("%10s\n" x @items), @items;
```

Filehandles

```perl
open CONFIG, 'dino';
open CONFIG, '<dino';
open BEDROCK, '>fred';
open LOG, '>>logfile';

open CONFIG, '<:encoding(UTF-8)', 'dino';
open BEDROCK, '>:encoding(UTF-8)', $file_name;
open LOG, '>>:encoding(UTF-8)', &logfile_name();

open BEDROCK, '>:utf8', $file_name; # probably not right
```

With the  encoding() form, you can specify other encodings too. You can get a list of
all of the encodings that your perl understands with a Perl one-liner:

`% perl -MEncode -le "print for Encode->encodings(':all')"`{.bash}

```perl
If you want a little-endian version of UTF-16:
open BEDROCK, '>:encoding(UTF-16LE)', $file_name;
Or perhaps Latin-1:
open BEDROCK, '>:encoding(iso-8859-1)', $file_name;
```

```perl
open BEDROCK, '>:crlf', $file_name;
open BEDROCK, '<:crlf', $file_name; # crlf -> newline
```

Binmoding Filehandles

```perl
binmode STDOUT; # don't translate line endings
binmode STDERR; # don't translate line endings
binmode STDOUT, ':encoding(UTF-8)';
binmode STDERR, ':encoding(UTF-8)';
```

Bad Filehandles

```perl
my $success = open LOG, '>>', 'logfile'; # capture the return value
if ( ! $success ) {
    # The open failed
    ...
}
```

Closing a Filehandle

```perl
close BEDROCK;
```

Fatal Errors with die


```perl
if ( ! open LOG, '>>', 'logfile' ) {
    die "Cannot create logfile: $!";
}

if (@ARGV < 2) {
    die "Not enough arguments\n";
}
```

Warning Messages with warn


```perl
warn ...
```

Automatically die-ing

```perl
if ( ! open LOG, '>>', 'logfile' ) {
    die "Cannot create logfile: $!";
}

use autodie;
open LOG, '>>', 'logfile';
```

Using Filehandles

```perl
if ( ! open PASSWD, "/etc/passwd") {
    die "How did you get logged in? ($!)";
}
while (<PASSWD>) {
    chomp;
    ...
}

print LOG "Captain's log, stardate 3.14159\n"; # output goes to LOG
printf STDERR "%d percent complete.\n", $done/$total * 100;

printf (STDERR "%d percent complete.\n", $done/$total * 100);
printf STDERR ("%d percent complete.\n", $done/$total * 100);
```

Changing the Default Output Filehandle

```perl
select BEDROCK;
print "I hope Mr. Slate doesn't find out about this.\n";
print "Wilma!\n";

select LOG;
$| = 1; # don't keep LOG entries sitting in the buffer
select STDOUT;
# ... time passes, babies learn to walk, tectonic plates shift, and then...
print LOG "This gets written to the LOG at once!\n";
```

- tectonic `[tɛk'tɑnɪk]` 构造的；建筑的；地壳构造上的

Reopening a Standard Filehandle

```perl
# Send errors to my private error log
if ( ! open STDERR, ">>/home/barney/.error_log") {
    die "Can't open error log for append: $!";
}
```

Output with say

```perl
use 5.010;
print "Hello!\n";
print "Hello!", "\n";
say "Hello!";

use 5.010;
my @array = qw( a b c d );
say @array; # "abcd\n"
say "@array"; # "a b c d\n";

use 5.010;
say BEDROCK "Hello!";
```

Filehandles in a Scalar

```perl
my $rocks_fh;
open $rocks_fh, '<', 'rocks.txt'
or die "Could not open rocks.txt: $!";

open my $rocks_fh, '<', 'rocks.txt'
or die "Could not open rocks.txt: $!";
```

```perl
while( <$rocks_fh> ) {
    chomp;
    ...
}

open my $rocks_fh, '>>', 'rocks.txt'
    or die "Could not open rocks.txt: $!";
foreach my $rock ( qw( slate lava granite ) ) {
    say $rocks_fh $rock
}
print $rocks_fh "limestone\n";
close $rocks_fh;

# ?
rint { $rock_fh }; # uses $_ by default
print { $rocks[0] } "sandstone\n";
```

## Hashes

A hash as a barrel of data.

Yet another way to think of a hash is as a very simple database, in which just
one piece of data may be filed under each key. In fact, if your task
description includes phrases like “finding duplicates,” “unique,” “
cross-reference,” or “lookup table,” it’s likely that a hash will be useful in
the implementation.

Hash Element Access

```perl
$hash{key}

$family_name{'fred'} = 'flintstone';
$family_name{'barney'} = 'rubble';

foreach my $person (qw< barney fred >) {
    print "I've heard of $person $family_name{$person}.\n";
}

$foo = 'bar';
print $family_name{ $foo . 'ney' }; # prints 'rubble'

$family_name{'wilma'} = 'flintstone'; # adds a new key (and value)
$family_name{'betty'} .= $family_name{'barney'}; # creates the element if needed

$granite = $family_name{'larry'}; # No larry here: undef
```

The Hash As a Whole

```perl
%some_hash = ( 'foo', 35, 'bar', 12.4, 2.5, 'hello',
               'wilma', 1.72e30, 'betty', "bye\n" );

@any_array = %some_hash; # list of key-value pairs

print "@any_array\n";
# might give something like this:
# betty bye (and a newline) wilma 1.72e+30 foo 35 2.5 hello bar 12.4
```

Hash Assignment

```perl
my %new_hash = %old_hash
my %inverse_hash = reverse %any_hash;
```

The Big Arrow

```perl
my %last_name = ( # a hash may be a lexical variable
    'fred' => 'flintstone',
    'dino' => undef,
    'barney' => 'rubble',
    'betty' => 'rubble',
);

my %last_name = (
    + => 'flintstone', # WRONG! Compilation error!
);

$score{'fred'} # or $score{fred}

# But beware; if there’s anything inside the curly braces besides a bareword,
# Perl will interpret it as an expression.  For instance, if there is a  . ,
# Perl interprets it as a string concatenation:
$hash{ bar.foo } = 1; # that's the key 'foobar'
```

Hash Functions

```perl
my %hash = ('a' => 1, 'b' => 2, 'c' => 3);
my @k = keys %hash;
my @v = values %hash;

if (%hash) {
    print "That was a true value!\n";
}

# each

while ( ($key, $value) = each %hash ) {
    print "$key => $value\n";
}

foreach $key (sort keys %hash) {
    $value = $hash{$key};
    print "$key => $value\n";
    # Or, we could have avoided the extra $value variable:
    # print "$key => $hash{$key}\n";
}
```

Typical Use of a Hash

```perl
$books{"barney"} = 0; # no books currently checked out
$books{"pebbles"} = undef; # no books EVER checked out; a new library card

if (exists $books{"dino"}) {
    print "Hey, there's a library card for dino!\n";
}

my $person = "betty";
delete $books{$person}; # Revoke the library card for $person

foreach $person (sort keys %books) { # each patron, in order
    if ($books{$person}) {
        print "$person has $books{$person} items\n"; # fred has 3 items
    }
}
```

The %ENV hash

```perl
print "PATH is $ENV{PATH}\n";
```

## In the World of Regular Expressions

Using Simple Patterns

```perl
$_ = "yabba dabba doo";
if (/abba/) {
    print "It matched!\n";
}
```

Unicode Properties: `\p{PROPERTY}`

```perl
# any sort of space
if (/\p{Space}/) { # 26 different possible characters
    print "The string has some whitespace.\n";
}

if (/\p{Digit}/) { # 411 different possible characters
    print "The string has a digit.\n";
}

if (/\p{Hex}\p{Hex}/) {
    print "The string has a pair of hex digits.\n";
}

if (/\P{Space}/) { # Not space (many many characters!)
    print "The string has one or more non-whitespace characters.\n";
}
```

About Metacharacters

The dot ( . ) is a wildcard character—it matches any single character except
a newline (which is represented by  "\n" )

Simple Quantifiers

- the star (*)
- the plus (+)
- the question mark (?)

Grouping in Patterns

```perl
$_ = "abba";
if (/(.)\1/) { # matches 'bb'
    print "It matched same character next to itself!\n";
}
```

```perl
$_ = "yabba dabba doo";
if (/y(....) d\1/) {
    print "It matched the same after y and d!\n";
}

$_ = "yabba dabba doo";
if (/y(.)(.)\2\1/) { # matches 'abba'
    print "It matched after the y!\n";
}

use 5.010;
$_ = "aa11bb";
if (/(.)\g{1}11/) {
    print "It matched!\n";
}

use 5.010;
$_ = "aa11bb";
if (/(.)\g{1}11/) {
    print "It matched!\n";
}
```

Alternatives

```perl
/fred|barney|betty/
```

Character Classes

```perl
$_ = "The HAL-9000 requires authorization to continue.";
if (/HAL-[0-9]+/) {
    print "The string mentions some model of HAL computer.\n";
}
```

Character Class Shortcuts

```perl
$_ = 'The HAL-9000 requires authorization to continue.';
if (/HAL-[\d]+/) {
    say 'The string mentions some model of HAL computer.';
}

use 5.010;
if (/\s/a) { # old, ASCII semantics
    say 'The string matched ASCII whitespace.';
}
if (/\h/) {
    say 'The string matched some horizontal whitespace.';
}
if (/\v/) {
    say 'The string matched some vertical whitespace.';
}
if (/[\v\h]/) { # same as \p{Space}, but not more than \s
    say 'The string matched some whitespace.';
}
```

Negating the Shortcuts

`[^\d]`, `[^\w]`, `[^\s]` => `\D`, `\W`, `\S`

## Matching with Regular Expressions

Matches with `m//`

Delimeters

  - m/fred/
  - m,fred,
  - m!fred!
 - m^fred^

Match Modifiers

```perl
# Case-Insensitive Matching with `/i`
print "Would you like to play a game? ";
chomp($_ = <STDIN>);
if (/yes/i) { # case-insensitive match
    print "In that case, I recommend that you go bowling.\n";
}

# Matching Any Character with `/s`: * -> [\d\D]
$_ = "I saw Barney\ndown at the bowling alley\nwith Fred\nlast night.\n";
if (/Barney.*Fred/s) {
    print "That string mentions Fred after Barney!\n";
}

# Adding Whitespace with `/x`
/
-? # an optional minus sign
[0-9]+ # one or more digits before the decimal point
\.? # an optional decimal point
[0-9]* # some optional digits after the decimal point
/x

/
[0-9]+ # one or more digits before the decimal point
[#] # literal pound sign
/x # end of string

# Combining Option Modifiers
if (/barney.*fred/is) { # both /i and /s
    print "That string mentions Fred after Barney!\n";
}
```

Choosing a Character Interpretation

```perl
use 5.014;
/\w+/a # A-Z, a-z, 0-9, _
/\w+/u # any Unicode word charcter
/\w+/l # The ASCII version, and word chars from the locale,
# perhaps characters like Œ from Latin-9


# A single  /a modifier affects the character class shortcuts, but if you have
# two  /a , it also tells Perl to use ASCII-only case-folding
/k/aai # only matches the ASCII K or k, not Kelvin sign
/k/aia # the /a's don't need to be next to each other
/ss/aai # only matches ASCII ss, SS, sS, Ss, not ß
/ff/aai # only matches ASCII ff, FF, fF, Ff, not ff
```

<http://unicode.org/Public/UNIDATA/CaseFolding.txt>

In this case, you might get different results depending on how Perl treats the string in
$_ and the string in match operator. If your source code is in UTF-8 but your input is
Latin-9, what happens? In Latin-9, the character Œ has ordinal value 0xBC and its
lowercase partner œ has 0xBD. In Unicode, Œ is code point U+0152 and œ is code
point U+0153. In Unicode, U+0OBC is  ¼ and doesn’t have a lowercase version. If your
input in  $_ is 0xBD and Perl treats that regular expression as UTF-8, you won’t get the

```perl
$_ = <STDIN>;
my $OE = chr( 0xBC ); # get exactly what we intend
if (/$OE/i) { # case-insensitive??? Maybe not.
    print "Found $OE\n";
}
```

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
