% What a fucking day （记一篇 Essay）
% TANG ZhiXiong
% 2013-00-00

What a fucking day （记一篇 Essay）
==================================

Yesterday I found my Home dir is full and it lend to my failure of installing PCL.
And then I reinstalled my Ubuntu, make my home dir inside my main system,
and shrink three systems to two(just drop my Ubuntu server).
After reinstalled two new systems, and installed many necessary apps and libraries,
and imported my ArcGIS_inside windows xp virtual system, I decide to back up the whole disk.
“This will save me a lot of time when one day, I break my system again and have to reinstall my Ubuntu”,
I thought. That where the story began.

I know on Linux, there is a fantastic command “dd”, which can back up a whole
disk byte by byte, so I should install as many software as possible, because “dd”
 doesn't care how many apps, libs you have, it only care about how many data to transfer.
 Guided by this, I got myself GMP, VLC, Blender, Emacs, Octave, Grass, etc, many
 softwares on Ubuntu software center. And complied some important libraries like PCL,
 Eigen, OSG, CGAL, GDAL, etc. I think it's great! Even though I don't know how to
 use these softwares and libraries. “But I will one day learn them”, I thought.

This afternoon, I started to back up my whole disk. My system disk is a SSD, I
checked wikipedia, found this. Great!

![](http://gnat-tang-shared-image.qiniudn.com/ssd-align-4k.png)

My SSD is well 4K aligned!

Anyway, start to back up~ Shutdown the computer, and fire it on on my Ubuntu live CD, and do this:

![](http://gnat-tang-shared-image.qiniudn.com/ssd-align-4k-2.png)


the command: “sudo dd if=/dev/sda of=/media/Coursera/whole_disk.backup bs=512 count=234441628”

and it started, but terribly....I don't know how its process going...

So I go to that des folder. Get this:

![](http://gnat.qiniudn.com/tmp/shitday1.png)

The free partion shrinked down and I know it's going on. It cost me 4 hours!!! to copy 90 GB, only 30
GB left, but I cant accept it!!! It too slow!!! I push “Control&C” to abandon it.

![](http://gnat.qiniudn.com/tmp/shitday2.png)

---

原文 PDF：<http://gnat.qiniudn.com/tmp/what_a_fucking_day.pdf>

<!--
![](https://oss.aliyuncs.com/colorworks/fd3b31a091435004c3ef62e86a8c2b58/original_khF3_3bce0000119c118f.jpg)
-->
