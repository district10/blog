% The AWK Programming Language | AWK 编程语言
% TANG ZhiXiong
% 2014-05-07


The AWK Programming Language | AWK 编程语言
===========================================

An Awk Tutorial
---------------

### Get Started

Hello World Example: `awk '$3 > 0 {print $1, $2 * $3}' data.txt`{.bash}

The Structure Of AWK Program

* `awk ' program ' infiles`{.bash}
* `awk ' program ' # get input from command line`{.bash}
* `awk -f progfile <optional list of input files>`{.bash}
* Format: `pattern { action }`

### Simple Output

What AWK Can? 

:   Printing Fields, Selecting Input, And Transforming Data

    * Printing Every Line 
        + `{ print }`{.awk}
        + `{ print $0 }`{.awk}
    * Printing Certain Fields
        + `{ print $1 }`{.awk}
    * Computing and Printing
        + `{ print $2, $3 * $4 }`
    * `NF`, the Number of Fields
        + `{ print NF, $1, $NF }`{.awk}: print number of fields and first and last fields of each input line
    * `NR`, the Number of Lines Read so far
        + `{ print NR, $1 }`{.awk}
    * Putting Text in the output 
        + `{ print "Total cost of the lunch is ", $1, $2 * $3 }`{.awk}

### Fancier Output 

`printf ("format",  value1, value2, ...)`{.bash}

:   * `%s`, `%f`, `%.2f` for formats
    * `\n` for newline
    * `%-s`, left justfied

Sorting

:   `awk '{ printf("%6.2f %s\n", $2 * $3, $0) }' emp.data | sort`{.bash}

### Selection

* Selection By Comparison: `$2 > 8`{.awk}
* Selection By Computation: `$2 * $3  > 40`{.awk}
* Selection By Text Content: `$2 == "Susan"`{.awk}
* Combination of Patterns
    + `$2 >= 20 || $3 <= 50`{.awk}
    + `!($2 < 20 && $3 > 50)`{.awk}
* Data Validation

    ```awk
    NF I= 3    { print $0, "number of fields is not equal to 3" }
    $2 < 3.35  { print $0, "rate is below minimum wage" }
    $2 > 10	   { print $0, "rate exceeds $10 per hour" }
    $3 < 0	   { print $0, "negative hours worked" }
    $3 > 60	   { print $0, "too many hours worked" }
    ```

* BEGIN and END
    + `BEGIN { something you want to do at begin } { process }`{.awk}
    + `print ""`{.awk}: print empty line
    + `print`{.awk}: print input line

### Computing with AWK

Counting 

:   ```awk
    { counter = counter + 1 }
    END { print ("there are %d lines.\n", counter) }
    ```

Computing Sums and Average

Handing Text

String Concatenation

:   ```awk
        { names = names $1 " " }
    END { print names }
    ```

Printing the Last Input Line

:   ```awk
        { last = $0 }
    END { print last }
    ```

Built-in Functions

:   `{ print $1, length($1) }`{.awk}

Counting Lines, Words

:   ```awk
            { nc = nc + length($0) + 1
              nw = nw + NF }
        END { print NR "lines", nw, "words", nc, "chars" }
    ```  

### Control-flow statements

* If-Else Statement
* While Statement
* For Statement

### Arrays

Print Input In Reverse Order By Line 

:   ```awk
    { line[NR] = $0 }
    END { i = NR
          while (i > 0) {
          print line[i]
          i = i - 1
          }
    }	
    ```

### A Handful Of Useful "One-Liners"  

* `END { print NR }`{.awk}: print Line Num
* `NR == 10 { print }`{.awk}: print specific line
* `{ print $NF }`{.awk}: print last field  
* `{ field = $NF } END { print field }`{.awk}: last field of last line
* `{ nf = nf + NF } END { print "there are ", nf, " fields in this file" }`{.awk} 
* Lines that contain "apple"

    ```awk
    /apple/ { lines = lines + 1 }
        END { print lines }
    ```

* largest field and the line contains it

    ```awk
    $1 > max { max = $1; maxline = $0 }
    END      { print max, maxline }
    ```

- `NF > 0`{.awk}: more than one field
- `length($0) > 80`{.awk}: lines that longer than 80 characters
- `{ print NF, $0 }`{.awk}
- `{ print $2, $1 }`{.awk}
- `{ tmp = $1; $1 = $2; $2 = tmp; print }`{.awk}
- `{ $1 = NR; print }`{.awk}: print Line Num, then the line
- `{ $2 = ""; print }`{.awk}: erase the second field
- Reverse fields

    ```awk
    { for (i = 1; i <= NF; i = i + 1) printf ("%s", $i)
      printf('\n')
    }
    ```

### WHAT'S NEXT

* keep reading
* keep writing scripts
* 入门到这就够了。这是本书的第一章。后面具体介绍了 awk 各个细部。可以瞟一眼，有个概念，用的时候再查。

THE AWK LANGUAGE
----------------

Data

```plain
USSR    8649  275   Asia
Canada	3852  25    North America
China	3705  1032  Asia
USA	3615  237   North America
Brazil	3286  134   South America
India	1267  746   Asia
Mexico	762   78    North America
France	211   55    Europe
Japan	144   120   Asia
Germany	96    61    Europe
England	94    56    Europe
```

program format: one line or multi lines breaks with "\"

* patterns 
    + `{ statements }`{awk}
    + `BEGIN { statements }`{.awk}
    + `END { statements }`{.awk}
    + `expression { statements }`{.awk}
    + `/ regular expression / { statements }`{.awk}
    + `pattern1, pattern2 { statements }`{.awk} 
* Actions
    + `print`{.awk}, `printf()`{.awk}
    + `if`{.awk}, `if else`{.awk}, `for`{.awk}, `do while`{.awk}, 
      `break`{.awk}, `continue`{.awk}, `next`{.awk}, `exit`{.awk}
* variables
    + built-in variables: `$0`{.awk}, `$1`{.awk}, ..., `$NF`{.awk}
    + field variables: `FS`{.awk}, `OFS`{.awk} (output field separator), `ORS`{.awk} (output record separator)   
* string as  regular expression

    ```awk
    BEGIN { FS = "\t"}
          { pop[$3] += $4 }
    END   { for (name in pop)
          	    print name, pop[name]}
    ```

* `split("/123/23/55", str, "/")`{.awk}: `arr["1"], arr["2"], arr["3"]`
* `{ print $1, $3 > ($3 > 40? "file-a.txt", "file-b.txt") }`{.awk}
* `{ print > $1 }`{.awk}
*
* `BEGIN { FS = "[{\n\t}]:;" }`{.awk}
* `BEGIN { FS = "[ ]" }`{.awk}: a single blank  
* `awk -F';:[\t]\n' '{ print }' file-in.txt`{.bash}
* `RS`{.awk} (record separator)
* The getline function
    + `getline <"file"`{.awk}
    + `getline x <"file"`{.awk}
    + `while (getline <"file")`{.awk}: dangerous
    + `while (getline <"file" > 0)`{.awk}: safe
* ARGV: `ARGC`{.awk}, `ARGV`{.awk}
* Making A Shell Command From An Awk Program

DATA PROCESSING
---------------

histgram:

```awk
    { data[int($1/10)]++ } 
END { for (i=0; i<10; i++) 
          printf("%s", rep(data[i], "*"))
} 

function rep(n, s, t) 
{
    while (n-- > 0) 
       {
	t = t s
       }
    return t
}
```

convert mmddyy to yymmdd: `{ $1 = substr($1,5,2) substr($1,1,2) substr($1,3,2) print $1 }`{.awk}

reports and databases 
---------------------

processing words
----------------

little languages
----------------

experiments with algorithms
--------------------------- 

epilog
------

---

Refs

* [The AWK Programming Language (豆瓣)](http://book.douban.com/subject/1876898/)