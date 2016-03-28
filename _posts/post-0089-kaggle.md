---
title: Kaggle
date: 2016-03-07
key-words:
    - key
tags:
    - tag
cssfile:
    - font-awesome.min.css
after-before: |
    <style>
    .tzx-tabs ul li a:hover {
        border-bottom: none;
    }
    pre {
        font-size: 80%;
    }
    </style>
before-after:
...

Kaggle
======

<div class="tzx-tabs">
* [Kaggle Intro](#p0line20)
* [Prizes](#p31line21)
* [Evaluation](#p60line34)
* [Competition Rules](#p31line42)
* [Other Useful Info](#p26line24)

<div id="p0line20">
Kaggle is the world's largest community of data scientists. They compete with
each other to solve complex data science problems, and the top competitors are
invited to work on the most interesting and sensitive business problems from
some of the world’s biggest companies through Masters competitions.

Kaggle provides cutting-edge data science results to companies of all sizes. We
have a proven track-record of solving real-world problems across a diverse
array of industries including life sciences, financial services, energy,
information technology, and retail.
</div>

<div id="p31line21">
The confidence to go forward and compete for some serious `$$$$$$`.
</div>

<div id="p26line24">
[Frequently Asked Questions - Titanic: Machine Learning from Disaster | Kaggle](https://www.kaggle.com/c/titanic/details/frequently-asked-questions)
:   nil

[Further Reading / Watching - Titanic: Machine Learning from Disaster | Kaggle](https://www.kaggle.com/c/titanic/details/further-reading-watching)
:   readings

    #. [Getting Started with Pandas – Predicting SAT Scores for New York City Schools | no free hunch](http://blog.kaggle.com/2013/01/17/getting-started-with-pandas-predicting-sat-scores-for-new-york-city-schools/)

</div>

<div id="p60line34">
The historical data has been split into two groups, a 'training set' and a
'test set'.  For the training set, we provide the outcome ( 'ground truth' )
for each passenger.  You will use this set to build your model to generate
predictions for the test set.

For each passenger in the test set, you must predict whether or not they
survived the sinking ( 0 for deceased, 1 for survived ).  Your score is the
percentage of passengers you correctly predict.

The Kaggle leaderboard has a public and private component.  50% of your
predictions for the test set have been randomly assigned to the public
leaderboard ( the same 50% for all users ).  Your score on this public portion
is what will appear on the leaderboard.  At the end of the contest, we will
reveal your score on the private 50% of the data, which will determine the
final winner.  This method prevents users from 'overfitting' to the
leaderboard.
</div>

<div id="p31line42">
* One account per participant: no private sharing outside teams
* Privately sharing code or data outside of teams is not permitted. It's okay
  to share code if made available to all participants on the forums.
* Team Mergers: yeah, we can merge teams
* Team Limits: nil
* Submission Limits@ 10 entries/day, up to 5 final sumbissions for judging
* Competition Timeline: start -- merger/submission deadline, end date
* This is a fun competition aimed at helping you get started with machine learning.
  While the Titanic dataset is publically available on the internet, looking up
  the answers defeats the entire purpose.  So seriously, don't do that.
* Rules Acceptance: I accepted these rules at 7:06 am, Monday 7 March 2016 UTC.
</div>
</div>

---

Tutorials

#. <http://nbviewer.jupyter.org/github/agconti/kaggle-titanic/blob/master/Titanic.ipynb>
#. <http://nbviewer.jupyter.org/github/jrjohansson/scientific-python-lectures/blob/master/Lecture-4-Matplotlib.ipynb>
#. <http://nbviewer.jupyter.org/github/agconti/BlueBook/blob/master/BlueBook.ipynb>
#. <https://github.com/wehrley/wehrley.github.io/blob/master/SOUPTONUTS.md>

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

Notes
-----

Let $(x1, x2, …, xn)$ be an independent and identically distributed sample
drawn from some distribution with an unknown density $ƒ$. We are interested in
estimating the shape of this function $ƒ$. Its kernel density estimator is

$$\hat{f}_h(x) = \frac{1}{n}\sum_{i=1}^n K_h (x - x_i) = \frac{1}{nh} \sum_{i=1}^n K\Big(\frac{x-x_i}{h}\Big), $$

![Kernel density estimation of 100 normally distributed random numbers using
    different smoothing bandwidths.](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Kernel_density.svg/375px-Kernel_density.svg.png)

where $K(•)$ is the kernel — a non-negative function that integrates to one and
has mean zero — and h > 0 is a smoothing parameter called the bandwidth. A
kernel with subscript h is called the scaled kernel and defined as $Kh(x) = 1/h K(x/h)$.
Intuitively one wants to choose h as small as the data allow, however
there is always a trade-off between the bias of the estimator and its variance;
more on the choice of bandwidth below.

![Comparison of the histogram (left) and kernel density estimate (right)
    constructed using the same data. The 6 individual kernels are the red
    dashed curves, the kernel density estimate the blue curves. The data points
    are the rug plot on the horizontal axis.](https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Comparison_of_1D_histogram_and_KDE.png/750px-Comparison_of_1D_histogram_and_KDE.png)

TODO
----

#. [hrojas / Learn Pandas — Bitbucket](https://bitbucket.org/hrojas/learn-pandas)
#. [Learn Pandas 01](http://nbviewer.jupyter.org/urls/bitbucket.org/hrojas/learn-pandas/raw/master/lessons/01%20-%20Lesson.ipynb)
#. [Learn Pandas 02](http://nbviewer.jupyter.org/urls/bitbucket.org/hrojas/learn-pandas/raw/master/lessons/02%20-%20Lesson.ipynb)
#. [Learn Pandas 03](http://nbviewer.jupyter.org/urls/bitbucket.org/hrojas/learn-pandas/raw/master/lessons/03%20-%20Lesson.ipynb)
#. [Learn Pandas 04](http://nbviewer.jupyter.org/urls/bitbucket.org/hrojas/learn-pandas/raw/master/lessons/04%20-%20Lesson.ipynb)
#. [Learn Pandas 05](http://nbviewer.jupyter.org/urls/bitbucket.org/hrojas/learn-pandas/raw/master/lessons/05%20-%20Lesson.ipynb)
#. [Learn Pandas 06](http://nbviewer.jupyter.org/urls/bitbucket.org/hrojas/learn-pandas/raw/master/lessons/06%20-%20Lesson.ipynb)
#. [Learn Pandas 07](http://nbviewer.jupyter.org/urls/bitbucket.org/hrojas/learn-pandas/raw/master/lessons/07%20-%20Lesson.ipynb)
#. [Learn Pandas 08](http://nbviewer.jupyter.org/urls/bitbucket.org/hrojas/learn-pandas/raw/master/lessons/08%20-%20Lesson.ipynb)
#. [Learn Pandas 09](http://nbviewer.jupyter.org/urls/bitbucket.org/hrojas/learn-pandas/raw/master/lessons/09%20-%20Lesson.ipynb)
#. [Learn Pandas 10](http://nbviewer.jupyter.org/urls/bitbucket.org/hrojas/learn-pandas/raw/master/lessons/10%20-%20Lesson.ipynb)
#. [Learn Pandas 11](http://nbviewer.jupyter.org/urls/bitbucket.org/hrojas/learn-pandas/raw/master/lessons/11%20-%20Lesson.ipynb)
#. [Pandas Bootcamp](https://pandasbootcamp.herokuapp.com/)

---

Refs

#. [Kernel density estimation - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Kernel_density_estimation)

---

