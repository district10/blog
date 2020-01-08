---
title: Leet Code
date: 2016-03-02
key-words:
tags:
  - leetcode
  - programming
cssfile:
after-before: |
    <style>
    .tzx-tabs ul li a:hover {
        border-bottom: none;
    }
    pre {
        font-size: 80%;
    }
    </style>
jsfile:
before-after:
---

Leet Code
=========

This post is terrible,
Please check out <notes/lang/algo.html> :smile:.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
<div class="tzx-tabs">
-   [Leet Code Intro](#tab11)
-   [F.A.Q.](#tab12)
-   [Term Uses](#tab13)

<div id="tab11">
LeetCode OJ is a platform for preparing technical coding interviews. Pick from
an expanding library of more than 190 questions, code and submit your solution
to see if you have solved it correctly. It is that easy!

Our platform currently supports a total of 9 languages: C, C++, Java, Python,
C#, JavaScript, Ruby, Bash, MySQL.
</div>

<div id="tab12">
What does `[1,null,2,3]` mean in binary tree representation?

:   The input `[1,null,2,3]` represents the serialized format of a binary tree
    using level order traversal, where null signifies a path terminator where
    no node exists below. StefanPochmann made an interesting tree visualizer
    tool.  Check out some examples below.
</div>

<div id="tab13">
This Agreement was last modified on February 10, 2014.

Please read these Terms and Conditions ("Agreement", "Terms of Service")
carefully before using leetcode.com ("the Site") operated by LeetCode ("us",
"we", or "our"). This Agreement sets forth the legally binding terms and
conditions for your use of the Site at leetcode.com.

By accessing or using the Site in any manner, including, but not limited to,
visiting or browsing the Site or contributing content or other materials to the
Site, you agree to be bound by these Terms and Conditions. Capitalized terms
are defined in this Agreement.
</div>
</div>

---

<div class="tzx-tabs">
-   [Tenth Line](#tab1q1)
-   [Tenth Line (Bash)](#tab1a1)

<div id="tab1q1">
[Tenth Line | LeetCode OJ](https://leetcode.com/problems/tenth-line/)

:   How would you print just the 10th line of a file?

    For example, assume that file.txt has the following content:

        Line 1
        Line 2
        Line 3
        Line 4
        Line 5
        Line 6
        Line 7
        Line 8
        Line 9
        Line 10

    Your script should output the tenth line, which is:

        Line 10
</div>

~~~ {#tab1a1 .bash}
// failed
cat file.txt | head -n 10 | tail -n 1
~~~
</div>

<div class="tzx-tabs">
-   [Single Number](#tab1q2)
-   [Single Number (C)](#tab1a2)

<div id="tab1q2">
[Single Number | LeetCode OJ](https://leetcode.com/problems/single-number/)

:   Given an array of integers, every element appears twice except for one.
    Find that single one.

    Note
      ~ Your algorithm should have a linear runtime complexity. Could you
        implement it without using extra memory?
</div>

~~~ {#tab1a2 .c}
int compare( void *a, void *b ) {
    return *(int *)a - *(int *)b;
}

int singleNumber(int* nums, int numsSize) {
    qsort( nums, numsSize, sizeof(int), compare );
    for (int i = 0; i + 1 < numsSize; i += 2 ) {
        if ( nums[i] != nums[i+1] ) {
            return nums[i];
        }
    }
    return nums[numsSize-1];
}
~~~
</div>

<div class="tzx-tabs">
-   [Self Crossing (Median)](#tab1q3)
-   [Self Crossing (C)](#tab1a3)
-   [Self Crossing (Better C)](#line129)

<div id="tab1q3">
[Self Crossing | LeetCode OJ](https://leetcode.com/problems/self-crossing/)

:   You are given an array `x` of `n` positive numbers. You start at point `(0,0)`
    and moves `x[0]` metres to the north, then `x[1]` metres to the west,
    `x[2]` metres to the south, `x[3]` metres to the east and so on. In other
    words, after each move your direction changes counter-clockwise.

    Write a one-pass algorithm with `O(1)` extra space to determine, if your
    path crosses itself, or not.

    Example 1

    :   Given `x = [2, 1, 1, 2]`,

            ┌───┐
            │   │
            └───┼──>
                │

        Return `true` (self crossing)

    Example 2

    :   Given x = [1, 2, 3, 4],

            ┌──────┐
            │      │
            │
            │
            └────────────>

        Return `false` (not self crossing)

    Example 3

    :   Given `x = [1, 1, 1, 1]`,

            ┌───┐
            │   │
            └───┼>

        Return `true` (self crossing)
</div>

~~~ {#tab1a3 .c}
bool isPerfectCollapsing( int cur, int len, int *data )
{
    while ( cur < len ) {
        if ( data[cur] < data[cur-2] ) {
            ++cur;
        } else { return false; }
    }
    return true;
}

bool isPerfect( int *data, int len )
{
    if ( len <= 2 ) { return true; }
    if ( len >= 5 && data[3]==data[1] && data[0]+data[4]>=data[2] ) {
        return false;
    }
    int cur = 2;
    while ( cur < len ) {
        // perfect expanding
        if ( data[cur] > data[cur-2] ) {
            ++cur;
        } else {
            if ( cur == 2 || cur == 3 ) {
                return isPerfectCollapsing( ++cur, len, data );
            } else {
                if ( data[cur]+data[cur-4] >= data[cur-2] ) {
                    ++cur;
                    if ( cur < len ) {
                        if ( data[cur]+data[cur-4] >= data[cur-2] ) {
                            return false;
                        } else { return isPerfectCollapsing(++cur, len, data); }
                    } else { return true; }
                } else { return isPerfectCollapsing(++cur, len, data); }
            }
        }
    }
    return true; // perfect expanding
}

bool isSelfCrossing( int *x, int xSize ) {
    return !isPerfect( x, xSize );
}
~~~

~~~ {#line129 .c}
/*          =   a l l    c a s e s   =

    case 1     case 2: expanding   case 3: collapsing
                    (global)           (local)
                 (not crossing)   (may not crossing)

   <------+     +------------+      +---------+
          |     |            |      |         |
          |     |  +-----+   |      |  +---+  |
          |     |  |     |   |      |  |   |  :
          #     |  |     #   |      |  v   |  :
                |  |         |      |      |
                |  +---------+      +------+
                |
                +--------->

    case 4: failed expanding

     +----+
     |    |
     |  <----[2]----^     [2]: second failure
     |    #         |
     |             [1]    [1]: first  failure
     |              |
     +--------------+

    case 5: failed expanding & then collapsing

     +----+
     |    |
     |    |  +------+
     |    #  | [C]  |     [C]: may be perfectly collapsed
     |       +--->  |
     |              |
     +--------------+

    case 6: failed expanding

        +---+
        |   |
        |   |
        |   #
        |
      <---[2]----+        [2]: second failure
        |        |
        |       [1]       [1]: first  failure
        |        |
        +--------+

    case 7: failed expanding & then collapsing

        +------+
        |      |
        |      #
        |
        |  +-----------+
        |  |  +-----+  |
        |  |  +-->  | [1] [1]: failure
        |  |        |  |
        |  +--------+  |
        +--------------+

   *notice: case 3 = case 6 + case 7

    case 8: docking!

        +-------+
        |       |
        |       +
        |
        |       ^
        |       |
        +-------+

#: starting point
*/

// case 3
bool isPerfectCollapsing( int cur, int len, int *data )
{
    while ( cur < len ) {
        if ( data[cur] < data[cur-2] ) {
            ++cur;
        } else { return false; }
    }
    return true;
}

bool isPerfect( int *data, int len )
{
    // case 1
    if ( len <= 2 ) { return true; }
    // case 8
    if ( len >= 5 &&
         data[3]==data[1] &&
         data[2]<=data[0]+data[4] )
    {
        return false;
    }

    int cur = 2;
    while ( cur < len && data[cur] > data[cur-2] ) {
        ++cur;
    }
    if ( cur == len || cur == len-1 ) {
        // case 2: perfect expanding
        return true;
    }

    // collapsed!
    if ( cur == 2 || cur == 3 ) {
        // case 3
        return isPerfectCollapsing( ++cur, len, data );
    }

    if ( data[cur]+data[cur-4] >= data[cur-2] ) {                    // case 4/5
        if ( ++cur < len ) {
            if ( data[cur]+data[cur-4] >= data[cur-2] ) {            // case 4
                return false;
            } else { return isPerfectCollapsing(++cur, len, data); } // case 5
        } else { return true; }
    } else { return isPerfectCollapsing(++cur, len, data); }         // case 6/7
}

bool isSelfCrossing( int *x, int xSize ) {
    return !isPerfect( x, xSize );
}
~~~
</div>

<div class="tzx-tabs">
-   [Remove Duplicates from Sorted Array (Easy)](#dup-q1)
-   [Remove Duplicates from Sorted Array (C)](#dup-a1)

<div id="dup-q1">
[Remove Duplicates from Sorted Array | LeetCode OJ](https://leetcode.com/problems/remove-duplicates-from-sorted-array/)

:   Given a sorted array, remove the duplicates in place such that each element
    appear only once and return the new length.

    Do not allocate extra space for another array, you must do this in place
    with constant memory.

    For example

    :   Given input array `nums = [1,1,2]`,

        Your function should return `length = 2`, with the first two elements
        of nums being `1` and `2` respectively. It doesn't matter what you
        leave beyond the new length.
</div>

~~~ {#dup-a1 .c}
int removeDuplicates(int* nums, int numsSize) {
    int cnt=0;
    for( int i = 0; i < numsSize;  ) {
        int j=1;
        while(nums[i+j]==nums[i]) {
            ++j;
        }
        nums[cnt]=nums[i];
        i+=j;
        ++cnt;
    }
    return cnt;
}
~~~
</div>

<div class="tzx-tabs">
-   [Power of Three (Easy)](#line231)
-   [Power of Three (C)](#line232)

<div id="line231">
[Power of Three | LeetCode OJ](https://leetcode.com/problems/power-of-three/)

:   Given an integer, write a function to determine if it is a power of three.

    Follow up
      ~ Could you do it without using any loop / recursion?
</div>

~~~ {#line232 .c}
bool isPowerOfThree(int n) {
    if ( n <= 0 ) {
        return false;
    }
    int p = log2( n ) / log2( 3 );
    return (int)pow(3, p) == n;
}
~~~
</div>

<div class="tzx-tabs">
-   [Balanced Binary Tree (Easy)](#line259)
-   [Balanced Binary Tree (C)](#line260)

<div id="line259">
[Balanced Binary Tree | LeetCode OJ](https://leetcode.com/problems/balanced-binary-tree/)

:   Given a binary tree, determine if it is height-balanced.

    For this problem, a height-balanced binary tree is defined as a binary tree
    in which the depth of the two subtrees of every node never differ by more
    than 1.
</div>

~~~ {#line260 .c}
/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     struct TreeNode *left;
 *     struct TreeNode *right;
 * };
 */
int depth( struct TreeNode* tree ) {
    if ( !tree ) {
        return 0;
    }
    if ( !(tree->left) && !(tree->right) ) {
        return 1;
    }
    if ( tree->left && !(tree->right) ) {
        return depth( tree->left ) + 1;
    }
    if ( tree->right && !(tree->left) ) {
        return depth( tree->right ) + 1;
    }

    int dl = depth( tree->left );
    int dr = depth( tree->right );
    return 1 + (dl < dr ? dr : dl);
}

bool isBalanced(struct TreeNode* root) {
    if ( !root ) { return true; }
    int dl = depth(root->left);
    int dr = depth(root->right);
    // printf("dl:%d, dr:%d", dl, dr);
    if ( abs(dl-dr) > 1 ) {
        return false;
    }
    return isBalanced( root->left ) && isBalanced( root->right );
}
~~~
</div>

<div class="tzx-tabs">
-   [Maximum Depth of Binary Tree (Easy)](#line314)
-   [Maximum Depth of Binary Tree (C)](#line315)

<div id="line314">
[Maximum Depth of Binary Tree | LeetCode OJ](https://leetcode.com/problems/maximum-depth-of-binary-tree/)

:   Given a binary tree, find its maximum depth.

    The maximum depth is the number of nodes along the longest path from the
    root node down to the farthest leaf node.
</div>

~~~ {#line315 .c}
/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     struct TreeNode *left;
 *     struct TreeNode *right;
 * };
 */
int depth( struct TreeNode* tree ) {
    if ( !tree ) {
        return 0;
    }
    if ( !(tree->left) && !(tree->right) ) {
        return 1;
    }
    if ( tree->left && !(tree->right) ) {
        return depth( tree->left ) + 1;
    }
    if ( tree->right && !(tree->left) ) {
        return depth( tree->right ) + 1;
    }

    int dl = depth( tree->left );
    int dr = depth( tree->right );
    return 1 + (dl < dr ? dr : dl);
}

int maxDepth(struct TreeNode* root) {
    return depth( root );
}
~~~
</div>

<div class="tzx-tabs">
-   [Minimum Depth of Binary Tree (Easy)](#line360)
-   [Minimum Depth of Binary Tree (C)](#line361)

<div id="line360">
[Minimum Depth of Binary Tree | LeetCode OJ](https://leetcode.com/problems/minimum-depth-of-binary-tree/)

:   Given a binary tree, find its minimum depth.

    The minimum depth is the number of nodes along the shortest path from the
    root node down to the nearest leaf node.
</div>

~~~ {#line361 .c}
/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     struct TreeNode *left;
 *     struct TreeNode *right;
 * };
 */

int minDepth(struct TreeNode* root) {
    if ( !root ) {
        return 0;
    }
    if ( !(root->left) && !(root->right) ) {
        return 1;
    }
    if ( !(root->left) && (root->right) ) {
        return 1 + minDepth(root->right);
    }
    if ( !(root->right) && (root->left) ) {
        return 1 + minDepth(root->left);
    }

    int dl = minDepth( root->left );
    int dr = minDepth( root->right );
    return 1 + (dl < dr ? dl : dr);
}
~~~
</div>

<div class="tzx-tabs">
-   [Bulb Switch (Median)](#line403)
-   [Bulb Switch (C)](#line404)

<div id="line403">
[Bulb Switcher | LeetCode OJ](https://leetcode.com/problems/bulb-switcher/)

:   There are `n` bulbs that are initially off. You first turn on all the bulbs.
    Then, you turn off every second bulb. On the third round, you toggle every
    third bulb (turning on if it's off or turning off if it's on). For the `i`th
    round, you toggle every `i` bulb. For the nth round, you only toggle the last
    bulb. Find how many bulbs are on after `n` rounds.

    Example

    :   Given `n = 3`.

        * At first, the three bulbs are `[off, off, off]`.
        * After first round, the three bulbs are `[on, on, on]`.
        * After second round, the three bulbs are `[on, off, on]`.
        * After third round, the three bulbs are `[on, off, off]`.

        So you should return `1`, because there is only one bulb is on.
</div>

~~~ {#line404 .c}
// how to?
int hit( int n )
{
    int cnt = 1;
    for( int i = 2; i < n; ++i ) {
        if ( n%i==0 ) { ++cnt; }
    }
    return cnt;
}

int bulbSwitch(int n) {
    if ( n == 0 || n == 1 ) { return n; }
    int cnt = n;
    for( int i = 2; i <=n ; ++i ) {
        if ( hit(i)%2!=0 ) {
            cnt -= n/i;
        } else {
            cnt += n/i;
        }
    }
    return cnt;
}
~~~
</div>

<div class="tzx-tabs">
-   [Implement Queue using Stacks (Easy)](#line450)
-   [Implement Queue using Stacks (C)](#line451)

<div id="line450">
[Implement Queue using Stacks | LeetCode OJ](https://leetcode.com/problems/implement-queue-using-stacks/)

:   Implement the following operations of a queue using stacks.

    * `push(x)` -- Push element `x` to the back of queue.
    * `pop()` -- Removes the element from in front of queue.
    * `peek()` -- Get the front element.
    * `empty()` -- Return whether the queue is empty.

    Notes
      ~ You must use only standard operations of a stack -- which means only
        push to top, peek/pop from top, size, and is empty operations are valid.
      ~ Depending on your language, stack may not be supported natively. You
        may simulate a stack by using a list or deque (double-ended queue), as
        long as you use only standard operations of a stack.
      ~ You may assume that all operations are valid (for example, no pop or
        peek operations will be called on an empty queue).
</div>

~~~ {#line451 .c}
typedef struct {
    int *data;
    int front;
    int back;
    // [ -- :front: --data-- :back: --]
} Queue;

/* Create a queue */
void queueCreate(Queue *queue, int maxSize) {
    queue->data = (int *)malloc( sizeof(int)*maxSize );
    queue->front = 0;
    queue->back = -1;
}

/* Push element x to the back of queue */
void queuePush(Queue *queue, int element) {
    queue->data[++(queue->back)] = element;
}

/* Removes the element from front of queue */
void queuePop(Queue *queue) {
    ++(queue->front);
}

/* Get the front element */
int queuePeek(Queue *queue) {
    return queue->data[queue->front];
}

/* Return whether the queue is empty */
bool queueEmpty(Queue *queue) {
    return queue->front > queue->back;
}

/* Destroy the queue */
void queueDestroy(Queue *queue) {
    free( queue->data );
    queue->front = 0;
    queue->back = -1;
}
~~~
</div>

<div class="tzx-tabs">
-   [Implement Stack using Queues (Easy)](#line516)
-   [Implement Stack using Queues (C)](#line517)

<div id="line516">
[Implement Stack using Queues | LeetCode OJ](https://leetcode.com/problems/implement-stack-using-queues/)

:   Implement the following operations of a stack using queues.

    * `push(x)` -- Push element `x` onto stack.
    * `pop()` -- Removes the element on top of the stack.
    * `top()` -- Get the top element.
    * `empty()` -- Return whether the stack is empty.

    Notes
      ~ You must use only standard operations of a queue -- which means only
        push to back, peek/pop from front, size, and is empty operations are
        valid.
      ~ Depending on your language, queue may not be supported natively. You
        may simulate a queue by using a list or deque (double-ended queue), as
        long as you use only standard operations of a queue.
      ~ You may assume that all operations are valid (for example, no pop or
        top operations will be called on an empty stack).
</div>

~~~ {#line517 .c}
typedef struct {
    int *data;
    int cursor;
} Stack;

/* Create a stack */
void stackCreate(Stack *stack, int maxSize) {
    stack->data = (int *)malloc( sizeof(int)*maxSize );
    stack->cursor = -1;
}

/* Push element x onto stack */
void stackPush(Stack *stack, int element) {
    stack->data[++(stack->cursor)] = element;
}

/* Removes the element on top of the stack */
void stackPop(Stack *stack) {
    --(stack->cursor);
}

/* Get the top element */
int stackTop(Stack *stack) {
    return stack->data[stack->cursor];
}

/* Return whether the stack is empty */
bool stackEmpty(Stack *stack) {
    return stack->cursor < 0;
}

/* Destroy the stack */
void stackDestroy(Stack *stack) {
    free( stack->data );
    stack->cursor = -1;
}
~~~
</div>

<div class="tzx-tabs">
-   [Binary Search Tree Iterator (Median)](#line576)
-   [Binary Search Tree Iterator (C)](#line577)

<div id="line576">
[Binary Search Tree Iterator | LeetCode OJ](https://leetcode.com/problems/binary-search-tree-iterator/)

:   Implement an iterator over a binary search tree (BST). Your iterator will
    be initialized with the root node of a BST.

    Calling `next()` will return the next smallest number in the BST.

    Note
      ~ `next()` and `hasNext()` should run in average `O(1)` time and uses
        `O(h)` memory, where `h` is the height of the tree.
</div>

~~~ {#line577 .c}
/**
 * Definition for binary tree
 * struct TreeNode {
 *     int val;
 *     struct TreeNode *left;
 *     struct TreeNode *right;
 * };
 */

struct BSTIterator {
    struct TreeNode *root;
    int count;
    int cursor;
    int *data;
}; 

int count( struct TreeNode *root )
{
    if ( !root ) { return 0; }
    if ( !(root->left) ) { return 1+count(root->right); }
    if ( !(root->right) ) { return 1+count(root->left); }
    return 1 + count(root->left) + count(root->right);
}

void traverse( struct TreeNode *root, struct BSTIterator *iter )
{
    if( !root ) { return; }
    traverse( root->left, iter );
    iter->data[(iter->cursor)++] = root->val;
    traverse( root->right, iter );
}

struct BSTIterator *bstIteratorCreate(struct TreeNode *root) {
    struct BSTIterator *iter = malloc( sizeof(struct BSTIterator) );
    iter->root = root;
    iter->count = count(root);
    iter->data = (int *)malloc( sizeof(int)*iter->count );
    iter->cursor = 0;
    traverse( root, iter );
    iter->cursor = 0;
    return iter;
}

/** @return whether we have a next smallest number */
bool bstIteratorHasNext(struct BSTIterator *iter) {
    return iter->cursor < iter->count;
}

/** @return the next smallest number */
int bstIteratorNext(struct BSTIterator *iter) {
    return iter->data[(iter->cursor)++];
}

/** Deallocates memory previously allocated for the iterator */
void bstIteratorFree(struct BSTIterator *iter) {
    free( iter->data );
}

/**
 * Your BSTIterator will be called like this:
 * struct BSTIterator *i = bstIteratorCreate(root);
 * while (bstIteratorHasNext(i)) printf("%d\n", bstIteratorNext(i));
 * bstIteratorFree(i);
 */
~~~
</div>

<div class="tzx-tabs">
-   [Binary Tree Inorder Traversal (Median)](#line658)
-   [Binary Tree Inorder Traversal (C)](#line659)

<div id="line658">
[Binary Tree Inorder Traversal | LeetCode OJ](https://leetcode.com/problems/binary-tree-inorder-traversal/)

:   Given a binary tree, return the inorder traversal of its nodes' values.

    For example

    :   Given binary tree `{1,#,2,3}`,

               1
                \
                 2
                /
               3

        return `[1,3,2]`.
</div>

~~~ {#line659 .c}
/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     struct TreeNode *left;
 *     struct TreeNode *right;
 * };
 */
/**
 * Return an array of size *returnSize.
 * Note: The returned array must be malloced, assume caller calls free().
 */

int count( struct TreeNode *root )
{
    if ( !root ) { return 0; }
    return 1+count(root->right)+count(root->left);
}

void traverse( struct TreeNode *root, int *data, int *cursor )
{
    if ( !root ) { return; }
    traverse( root->left, data, cursor );
    data[(*cursor)++] = root->val;
    traverse( root->right, data, cursor );
}

int* inorderTraversal(struct TreeNode* root, int* returnSize) {
    *returnSize = count( root );
    int *data = malloc( sizeof(int)*(*returnSize) );
    int cursor = 0;
    traverse( root, data, &cursor );
    return data;
}
~~~
</div>

<div class="tzx-tabs">
-   [Segments](#line891)
-   [Segments (C)](#line892)

<div id="line891">
[OpenJudge - 4114:Segments](http://bailian.openjudge.cn/practice/4114/)

:   总时间限制:
      ~ 1000ms
    内存限制:
      ~ 65536kB
    描述
      ~ Given n segments in the two dimensional space, write a program, which
        determines if there exists a line such that after projecting these
        segments on it, all projected segments have at least one point in
        common.
    输入
      ~ Input begins with a number T showing the number of test cases and then,
        T test cases follow. Each test case begins with a line containing a
        positive integer n ≤ 100 showing the number of segments. After that, n
        lines containing four real numbers x1 y1 x2 y2 follow, in which (x1,
        y1) and (x2, y2) are the coordinates of the two endpoints for one of
        the segments.
    输出
      ~ For each test case, your program must output "Yes!", if a line with
        desired property exists and must output "No!" otherwise. You must
        assume that two floating point numbers a and b are equal if |a - b| <
        10-8.
    样例输入
      ~ ```plain
        3
        2
        1.0 2.0 3.0 4.0
        4.0 5.0 6.0 7.0
        3
        0.0 0.0 0.0 1.0
        0.0 1.0 0.0 2.0
        1.0 1.0 2.0 1.0
        3
        0.0 0.0 0.0 1.0
        0.0 2.0 0.0 3.0
        1.0 1.0 2.0 1.0
        ```
    样例输出
      ~ ```plain
        Yes!
        Yes!
        No!
        ```
    来源
      ~ Amirkabir University of Technology Local Contest 2006
</div>

~~~ {#line892 .c}
// todo
~~~
</div>

---

<div class="tzx-tabs">
-   [Roman to Integer (Easy)](#)
-   [](#)

<div id="p95line952">
Given a roman numeral, convert it to an integer.

Input is guaranteed to be within the range from 1 to 3999.
</div>

~~~ {#p99line948 .c}
bool falling( const char *cur, const char *next )
{
    return char2int(cur) >= char2int(next);
}

int char2int( const char *c )
{
    switch ( *c ) {
        case 'I': return 1;
        case 'V': return 5;
        case 'X': return 10;
        case 'L': return 50;
        case 'C': return 100;
        case 'D': return 500;
        case 'M': return 1000;
        default: return 0;
    }
}

int romanToInt(char* s) {
    if ( !*s ) { return 0; }

    int result = 0;
    while( *s ) {
        if ( *(s+1) ) {
            if ( falling(s, s+1) ) {
                result += char2int(s);
            } else {
                result -= char2int(s);
            }
            ++s;
        } else {
            result += char2int(s);
            return result;
        }
    }
}
```
</div>

<!--
<div class="tzx-tabs">
-   [](#)
-   [](#)

<div id="">
</div>

~~~ {# .c}
~~~
</div>

[OpenJudge - G:I Love this Game!](http://www.bailian.openjudge.cn/2015finalexam/G/)
-->
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
