% Stack Overflow
% TANG ZhiXiong
% 2015-11-19

StackOverflow
=============

这是很久以前的笔记。

## The Star

Name: [Jonathan Leffler][jonathan-leffler]
Location: United States
Age: 53 (2014)


[jonathan-leffler]: http://stackoverflow.com/users/15168/jonathan-leffler



# Q & A

---

## [01. Solve the memory alignment in C interview question that stumped me][quention-01]

#### Q：

我刚完成了一个面试的一些测试题，其中的一道把我难住（stumped）了（哪怕面试的时候可以用谷歌）。看看 Stackoverflow 这儿有人能搞定它不。

`memset_16alignmed` 函数需要一个 16 字节的对齐的指针传进去，不然它会崩溃

a) 如何分配 1024 字节的内存，然后给它一个 16 字节的边界？
b) 调用完 `memset_16alignmed` 后释放内存。

```c
{
   void *mem;
   void *ptr;
   // answer a) here
   memset_16aligned(ptr, 0, 1024);
   // answer b) here
}
```



#### A: 


原来的答案：

```c
{
void *mem = malloc(1024+16);
void *ptr = ((char *)mem+16) & ~ 0x0F;
memset_16aligned(ptr, 0, 1024);
free(mem);
}
```

修改后的答案

```c
{
void *mem = malloc(1024+15);
void *ptr = ((uintptr_t)mem+15) & ~ (uintptr_t)0x0F;
memset_16aligned(ptr, 0, 1024);
free(mem);
}
```

一些说明



The first step is to allocate enough spare space, just in case. Since the memory must be 16-byte aligned (meaning that the leading byte address needs to be a multiple of 16), adding 16 extra bytes guarantees that we have enough space. Somewhere in the first 16 bytes, there is a 16-byte aligned pointer. (Note that malloc() is supposed to return a pointer that is sufficiently well aligned for any purpose. However, the meaning of 'any' is primarily for things like basic types - long, double, long double, long long. When you are doing more specialized things, like playing with graphics systems, they can need more stringent alignment than the rest of the system - hence questions and answers like this.)

首先要分配足够的空闲空间，以防万一。由于分配的内存必须以 16-byte 对齐（就是说地址的首个字节得是 16 的倍数），加上 16 个字节保证内存分配够。


The next step is to convert the void pointer to a char pointer; GCC notwithstanding, you are not supposed to do pointer arithmetic on void pointers (and GCC has warning options to tell you when you abuse it). Then add 16 to the start pointer. Suppose malloc() returned you an impossibly badly aligned pointer: 0x800001. Adding the 16 gives 0x800011. Now I want to round down to the 16-byte boundary - so I want to reset the last 4 bits to 0. 0x0F has the last 4 bits set to one; therefore, ~ 0x0F has all bits set to one except the last four. Anding that with 0x800011 gives 0x800010. You can iterate over the other offsets and see that the same arithmetic works.

The last step, free(), is easy: you always, and only, return to free() a value that one of malloc(), calloc() or realloc() returned to you - anything else is a disaster. You correctly provided mem to hold that value - thank you. The free releases it.

Finally, if you know about the internals of your system's malloc package, you could guess that it might well return 16-byte aligned data (or it might be 8-byte aligned). If it was 16-byte aligned, then you'd not need to dink with the values. However, this is dodgy and non-portable -- other malloc packages have different minimum alignments, and therefore assuming one thing when it does something different would lead to core dumps. Within broad limits, this solution is portable.

Someone else mentioned posix_memalign() as another way to get the aligned memory; that isn't available everywhere, but could often be implemented using this as a basis. Note that it was convenient that the alignment was a power of 2; other alignments are messier.

One more comment - this code does not check that the allocation succeeded.

Amendment

Windows Programmer pointed out that you can't do bit mask operations on pointers, and, indeed, GCC (3.4.6 and 4.3.1 tested) does complain like that. So, an amended version of the basic code - converted into a main program, follows. I've also taken the liberty of adding just 15 instead of 16, as has been pointed out. I'm using uintptr_t since C99 has been around long enough to be accessible on most platforms. If it wasn't for the use of PRIXPTR in the printf() statements, it would be sufficient to #include <stdint.h> instead of using #include <inttypes.h>. [This code includes the fix pointed out by C.R., which was reiterating a point first made by Bill K a number of years ago, which I managed to overlook until now.]

```c
#include <assert.h>
#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>

static void memset_16aligned(void *space, char byte, size_t nbytes)
{
    assert((nbytes & 0x0F) == 0);
    assert(((uintptr_t)space & 0x0F) == 0);
}

int main(void)
{
    void *mem = malloc(1024+15);
    void *ptr = (void *)(((uintptr_t)mem+15) & ~ (uintptr_t)0x0F);
    printf("0x%08" PRIXPTR ", 0x%08" PRIXPTR "\n", mem, ptr);
    memset_16aligned(ptr, 0, 1024);
    free(mem);
    return(0);
}
And here is a marginally more generalized version, which will work for sizes which are a power of 2:

#include <assert.h>
#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>

static void memset_16aligned(void *space, char byte, size_t nbytes)
{
    assert((nbytes & 0x0F) == 0);
    assert(((uintptr_t)space & 0x0F) == 0);
}

static void test_mask(size_t align)
{
    uintptr_t mask = ~(uintptr_t)(align - 1);
    void *mem = malloc(1024+align-1);
    void *ptr = (void *)(((uintptr_t)mem+align-1) & mask);
    assert((align & (align - 1)) == 0);
    printf("0x%08" PRIXPTR ", 0x%08" PRIXPTR "\n", mem, ptr);
    memset_16aligned(ptr, 0, 1024);
    free(mem);
}

int main(void)
{
    test_mask(16);
    test_mask(32);
    test_mask(64);
    test_mask(128);
    return(0);
}
```



To convert test_mask() into a general purpose allocation function, the single return value from the allocator would have to encode the release address, as several people have indicated in their answers.

Problems with interviewers

Uri commented: Maybe I am having [a] reading comprehension problem this morning, but if the interview question specifically says: "How would you allocate 1024 bytes of memory" and you clearly allocate more than that. Wouldn't that be an automatic failure from the interviewer?

My response won't fit into a 300-character comment...

It depends, I suppose. I think most people (including me) took the question to mean "How would you allocate a space in which 1024 bytes of data can be stored, and where the base address is a multiple of 16 bytes". If the interviewer really meant how can you allocate 1024 bytes (only) and have it 16-byte aligned, then the options are more limited.

Clearly, one possibility is to allocate 1024 bytes and then give that address the 'alignment treatment'; the problem with that approach is that the actual available space is not properly determinate (the usable space is between 1008 and 1024 bytes, but there wasn't a mechanism available to specify which size), which renders it less than useful.
Another possibility is that you are expected to write a full memory allocator and ensure that the 1024-byte block you return is appropriately aligned. If that is the case, you probably end up doing an operation fairly similar to what the proposed solution did, but you hide it inside the allocator.
However, if the interviewer expected either of those responses, I'd expect them to recognize that this solution answers a closely related question, and then to reframe their question to point the conversation in the correct direction. (Further, if the interviewer got really stroppy, then I wouldn't want the job; if the answer to an insufficiently precise requirement is shot down in flames without correction, then the interviewer is not someone for whom it is safe to work.)




---

## [2. What are the differences between Perl, Python, AWK and sed?][quention-02]

just want to know what are the main differences among them? and the power of each language (where it's better to use it).

it's not "vs." like topic, just information.



---

In order of appearance, the languages are sed, awk, perl, python.

The sed program is a stream editor, and is designed to apply the actions from a script to each line (or, more generally, to specified ranges of lines) of the input file or files. Its language is based on ed, the Unix editor, and although it has conditionals and so on, it is hard to work with for complex tasks. You can work minor miracles with it - but at a cost to the hair on your head. However, it is probably the fastest of the programs when attempting tasks within its remit. (It has the least powerful regular expressions of the programs discussed - adequate for many purposes, but certainly not PCRE - Perl-Compatible Regular Expressions)

The awk program (name from the initials of its authors - Aho, Weinberger and Kernighan) is a tool originally for formatting reports. It can be used as a souped up sed; in its more recent versions, it is computationally complete. It uses an interesting idea - the program is based on 'patterns matched' and 'actions taken when the pattern matches'. The patterns are fairly powerful (Extended Regular Expressions). The language for the actions is similar to C. One of the key features of awk is that it splits the input lines into fields automatically.

Perl was written in part as an awk-killer and sed-killer. Two of the programs provided with it are a2p and s2p for converting awk scripts and sed scripts into Perl. Perl is one of the earliest of the next generation of scripting languages (Tcl/Tk can probably claim primacy). It has powerful integrated regular expression handling with a vastly more powerful language. It provides access to almost all system calls, and has the extensibility of the CPAN modules. (Neither awk nor sed is extensible.) One of Perl's mottos is "TMTOWTDI - There's more than one way to do it" (pronounced "tim-toady"). Perl has 'objects', but it is more of an add-on than a fundamental part of the language.

Python was written last, and probably in part as a reaction to Perl. It has some interesting syntactic ideas (indenting to indicate levels - no braces or equivalents). It is more fundamentally object-oriented than Perl; it is just as extensible as Perl.

OK - when to use each?

sed - when you need to do simple text transforms on files.
awk - when you only need simple formatting and summarization or transformation of data.
perl - for almost any task, but especially when the task needs complex regular expressions.
python - for the same tasks that you could use Perl for.
I'm not aware of anything that Perl can do that Python can't, nor vice versa. The choice between the two would depend on other factors. I learned Perl before there was a Python, so I tend to use it. Python has less accreted syntax and is generally somewhat simpler to learn. Perl 6, when it becomes available, will be a fascinating development.

(Note that the 'overviews' of Perl and Python, in particular, are woefully incomplete; whole books could be written on the topic.)







[quention-01]: http://stackoverflow.com/questions/227897/solve-the-memory-alignment-in-c-interview-question-that-stumped-me/227900#227900
[quention-02]: http://stackoverflow.com/questions/366980/what-are-the-differences-between-perl-python-awk-and-sed/367014#367014



## The Star

Name: [Charles Bailey][charles-bailey]
Location: United Kingdom


[charles-bailey]: http://stackoverflow.com/users/19563/charles-bailey



## Q & A

---

#### [01. Difference between ¡°git add -A¡± and ¡°g add .¡±][quention-01]


[quention-01]: http://stackoverflow.com/questions/572549/difference-between-git-add-a-and-git-add/572660#572660


The command git add [--all|-A] appears to be identical to git add .. Is this correct? If not, how do they differ?



---

"git add -A" is equivalent to "git add .; git add -u".

The important point about "git add ." is that it looks at the working tree and adds all those paths to the staged changes if they are either changed or are new and not ignored, it does not stage any 'rm' actions.

"git add -u" looks at all the currently tracked files and stages the changes to those files if they are different or if they have been removed. It does not add any new files, it only stages changes to already tracked files.

"git add -A" is a handy shortcut for doing both.

You can test the differences out with something like this:

git init
echo Change me > change-me
echo Delete me > delete-me
git add change-me delete-me
git commit -m initial

echo OK >> change-me
rm delete-me
echo Add me > add-me

git status
# Changed but not updated:
#   modified:   change-me
#   deleted:    delete-me
# Untracked files:
#   add-me

git add .
git status

# Changes to be committed:
#   new file:   add-me
#   modified:   change-me
# Changed but not updated:
#   deleted:    delete-me

git reset

git add -u
git status

# Changes to be committed:
#   modified:   change-me
#   deleted:    delete-me
# Untracked files:
#   add-me

git reset

git add -A
git status

# Changes to be committed:
#   new file:   add-me
#   modified:   change-me
#   deleted:    delete-me
Summary:

git add -A stages All
git add . stages new and modified, without deleted
git add -u stages modified and deleted, without new


## The Star

Name: Blot Clock
Location: Singapore
Age: 22


## Q & A


---

[01. ][quention-01]

[quention-01]: http://stackoverflow.com/questions/18701670/can-i-use-non-existing-css-classes/18701712#18701712







