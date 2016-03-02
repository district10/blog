% Leet Code
% TANG ZhiXiong
% 2016-03-02

Leet Code
=========

<link rel="stylesheet" href="jquery-ui.css">
<style>
.tzx-tabs ul li a:hover {
    border-bottom: none;
}
</style>

<div class="tzx-tabs">
* [Leet Code Intro](#tab11)
* [F.A.Q.](#tab12)
* [Term Uses](#tab13)

<div id="tab11">
LeetCode OJ is a platform for preparing technical coding interviews. Pick from
an expanding library of more than 190 questions, code and submit your solution
to see if you have solved it correctly. It is that easy!

Our platform currently supports a total of 9 languages: C, C++, Java, Python,
C#, JavaScript, Ruby, Bash, MySQL.
</div>

<div id="tab12">
What does [1,null,2,3] mean in binary tree representation?

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
* [Tenth Line](#tab1q1)
* [Tenth Line (Bash)](#tab1a1)

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
* [Single Number](#tab1q2)
* [Single Number (C)](#tab1a2)

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
* [Self Crossing (Median)](#tab1q3)
* [Self Crossing (C)](#tab1a3)

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
// how to?
bool process4(int* x)
{
    // 4, or more
    if ( x[3]==x[1]&&x[2]==x[0] ) {
        return true;
    }
    bool expandV = x[2] > x[0];
    bool expandH = x[3] > x[1];
    if ( (expandV&&!expandH)
      || (!expandV&&expandH)) {
        return true;
    }
    return false;
}

bool isSelfCrossing(int* x, int xSize) {

}
~~~
</div>

<div class="tzx-tabs">
* [Remove Duplicates from Sorted Array (Easy)](#dup-q1)
* [Remove Duplicates from Sorted Array (C)](#dup-a1)

<div id="dup-q1">
[Remove Duplicates from Sorted Array | LeetCode OJ](https://leetcode.com/problems/remove-duplicates-from-sorted-array/)

:   Given a sorted array, remove the duplicates in place such that each element
    appear only once and return the new length.

    Do not allocate extra space for another array, you must do this in place
    with constant memory.

    For example,
    Given input array `nums = [1,1,2]`,

    Your function should return `length = 2`, with the first two elements of nums
    being `1` and `2` respectively. It doesn't matter what you leave beyond the new
    length.
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
* [Power of Three (Easy)](#line231)
* [Power of Three (C)](#line232)

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
    int i = (log2( n )/log2(3));
    if ( (int)pow(3, i) == n ) {
        return true;
    } else {
        return false;
    }
}
~~~
</div>

<div class="tzx-tabs">
* [Balanced Binary Tree (Easy)](#line259)
* [Balanced Binary Tree (C)](#line260)

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
* [](#)
* [](#)

<div id="">
</div>

~~~ {# .c}
~~~
</div>


<!--
<div class="tzx-tabs">
* [](#)
* [](#)

<div id="">
</div>

~~~ {# .c}
~~~
</div>
-->

<script type="text/javascript" src="jquery.min.js"></script>
<script type="text/javascript" src="jquery-ui.min.js"></script>
<script>
$(function() {
    $( ".tzx-tabs" ).tabs();
});
</script>
