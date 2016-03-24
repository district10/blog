% 空间分析实习报告
% TANG ZhiXiong
% 2014-05-04

空间分析实习报告
================

实习目的
--------

![ArcGIS][arcgis-logo]

* 本次实习的用 [ArcGIS][arcgis] 完成空间分析的一些操作，
* 加深对空间分析理论的理解和认识，
* 熟悉 GIS 领域最通用最强大的软件 ArcGIS 的使用。

实习过程
--------

### 过程综述

1. 实习按照实习指导书进行，分为栅格、矢量、三维等几大版块；
2. 按照实习指导书要求，回答相应问题，并提交几份地图；
3. 最后按要求撰写实习报告。

### 一点说明

因为某种神的号召，我要用 Python 做这次实习。调用 ArcGIS 的 ArcPy 之前的准备工作

![解压数据][extract-data]

![打开地图][load-mxd]

![打开 Python Shell][load-python-shell]

然后就是把相应代码粘贴到 Python Shell 中执行（回车即可）

代码放在各 `DEMO` 文件夹的 `x-py` 文件夹内，有些我试验的 Python 脚本放在 `more-scripts` 文件夹

### 栅格部分（一个完整的例子, DEMO）

1. 设置工作路径，加入必要的 Python Module

```python
path_base = 'X://DEMO/';
path_gdb = path_base + 'demo.gdb/';
path_data = path_base + 'Spatial/';
# import modules
import sys, os, arcpy;
import arcpy.mapping as mapping;
from arcpy.sa import *
from arcpy.mapping import *
```

2. 设置工作区

```python
# set workspace
arcpy.env.workspace = path_gdb;
```

3. 指定数据来源

```python
# source data
path_elevation = path_data + 'elevation'
path_landuse = path_data + 'landuse'
path_school_site = path_data + 'School_site.shp'
path_destination = path_data +  'Stowe.gdb/destination'
path_rec_sites = path_data + 'Stowe.gdb/rec_sites'
path_roads = path_data + 'Stowe.gdb/roads'
path_schools = path_data + 'Stowe.gdb/schools'
```

4. 获取当前地图的第一个 dataFrame，以添加数据

<small>
```python
# get document
mxd = mapping.MapDocument("CURRENT");
df = mapping.ListDataFrames(mxd)[0]; # Get First Data frame, a.k.a. "Layers" (empty by far)
```
</small>

5. 添加数据

```python
# Add Layers
layer = mapping.Layer(path_elevation);
mapping.AddLayer(df, layer, "AUTO_ARRANGE")
layer = mapping.Layer(path_landuse);
mapping.AddLayer(df, layer, "AUTO_ARRANGE")
layer = mapping.Layer(path_school_site);
mapping.AddLayer(df, layer, "AUTO_ARRANGE")
layer = mapping.Layer(path_destination);
mapping.AddLayer(df, layer, "AUTO_ARRANGE")
layer = mapping.Layer(path_rec_sites);
mapping.AddLayer(df, layer, "AUTO_ARRANGE")
layer = mapping.Layer(path_roads);
mapping.AddLayer(df, layer, "AUTO_ARRANGE")
layer = mapping.Layer(path_schools);
mapping.AddLayer(df, layer, "AUTO_ARRANGE")
# Adding Layers Done, Fantastic~
```

6. 设置数据的路径为相对路径便于分享拷贝后使用

```python
# set relative path
mxd.relativePaths = True;
```

7. 设置处理的边界（包围盒？），这样处理就是对全图，而不是局部，便于

```python
for df in mapping.ListDataFrames(mxd):
	if (df.name == 'Layers'): # that's for sure
		layers = mapping.ListLayers(mxd, 'elevation', df);
        # set extent to whole map, that's what we want
		arcpy.env.extent = layers[0].getExtent();
```

8. 确定下，你的空间分析组件有没有打上勾

```python
arcpy.CheckOutExtension("Spatial");
```

如果你没打开的话，大概会看到个这个

![spatial extension error][spatial-extension-error]

9. 开始处理

根据地形生成阴影、坡度栅格图，根据欧式距离生成 DisTanceRec 和 DistanceSch 图

```python
# Execute HillShade
outHillShade = arcpy.sa.Hillshade("elevation", 180, 75, "SHADOWS", 1); # done
outHillShade.save(path_gdb + 'HillShade');
# fine
Slope = arcpy.sa.Slope("elevation", "DEGREE");
Slope.save(path_gdb + 'Slope');
# Distance to Rec Site
DistanceRec = arcpy.sa.EucDistance("rec_sites", cell_size = 30);
DistanceRec.save(path_gdb + 'DistanceRec');
# Distance to School
DistanceSch = arcpy.sa.EucDistance("schools", cell_size = 30);
DistanceSch.save(path_gdb + 'DistanceSch');
```

降低距离的分类，重分类

<small><small><small>
```python
# this is it, Reclassify
ReclassSlope = arcpy.sa.Reclassify("Slope", "Value",
						RemapRange([[0,8,1],[8,15,2],[15,23,3],[23,31,4],[31,39,5],
									[39,46,6],[46,54,7],[54,62,8],[62,69,9],[69,78,10]]), "NODATA"); # this is what we want~
ReclassSlope.save(path_gdb + 'ReclassSlope');
ReclassRec = arcpy.sa.Reclassify("DistanceRec", "Value",
						RemapRange([[0,1349,1],[1349,2698,2],[2698,4046,3],[4046,5395,4],[5395,6744,5],
									[6744,8093,6],[8093,9441,7],[12139,13488,8],[10790,12139,9],[12139,13488,10]]), "NODATA");
ReclassRec.save(path_gdb + 'ReclassRec');
```
</small></small></small>

手工太累，用一个函数生成重分类的 RemapRange 矩阵，再重分类

```python
# seem we need a function to help us out
def partition (beg, end, num):
	pace = ( end - beg ) / num + 1;
	return [[beg+pace*i, beg+pace*i+pace] for i in xrange(num)]
range = partition (0, 16928, 10);
ReclassSch = arcpy.sa.Reclassify("DistanceSch", "Value",
						RemapRange(range), "NODATA");
ReclassSch.save(path_gdb + 'ReclassSch');
```

按照实习指导书的要求，输出

```python
with arcpy.da.SearchCursor("landuse", ("LANDUSE")) as cursor:
	for row in sorted(cursor):
		print row[0]
```

10. 处理结果截图

![粘贴并运行][paste-and-execute]

![运行框的输出信息][output-msg]

![桌面右下角的输出信息][output-msg2]

![代码输出结果][output-done]

![最终输出结果][output-map]

#### 矢量部分

**DEMO2, test1**

1. 打开 mxd 空地图文件，用相应脚本加载数据

2. 通过属性选定数据，用 Arcpy 中的 `SelectLayerByAttribute_management`。

<small>
```python
arcpy.SelectLayerByAttribute_management("Streets", "NEW_SELECTION", '"STR" = \'I40\'');
```
</small>

注：

:   > ArcPy 里同一个函数有两种调用方法，
    > 一种是这里的方式：功能（SelectLayerByAttribute）+ 分类（management）；另
    > 一种是按照 ArcToolBox 的结构分层次，如 `arcpy.sa.Slope()`，其中 sa 指
    > Spatial Analysis，是相应 ArcToolBox 的别名（alias），可以通过右键相应
    > ToolBox 查看。后一种的层次性和条理性更清晰，但前一种，更直接得面向功能，
    > 即你想干什么。根据具体情况，选择适合的方式。

3. 选定数据，统计数量，按照指导书要求回答问题

<small><small>
```python
arcpy.SelectLayerByLocation_management("Stations", "WITHIN_A_DISTANCE", "Streets", "1000 Feet", "NEW_SELECTION");
count = arcpy.GetCount_management("Stations");
# Ques: How many sites, and their name?
# Ans:
print 'There are ' + str(count) + ' Stations are ... within 140 feets from 140 road'; # ===> 2, ...
with arcpy.da.SearchCursor("Stations", ("NAME")) as cursor:
	for row in sorted(cursor):
		print row[0] # have a better looking than `print row'
```
</small></small>

4. 一些别的处理

<small><small>
```python
arcpy.SelectLayerByLocation_management("Business", "WITHIN_A_DISTANCE", "Stations", "1320 Feet", "NEW_SELECTION");
count = arcpy.GetCount_management( "Business"); # ==> 19
print "有 " + str(count) + " 个商业站点位于已选中的加油站 1320 英尺以内"
arcpy.SelectLayerByAttribute_management("Zoning", "NEW_SELECTION", '"DESCRIPTIO" = \'DRAIN\'');
arcpy.SelectLayerByLocation_management("Zoning", "BOUNDARY_TOUCHES", "Zoning"); # ==> 37
juris= [row[0] for row in arcpy.da.SearchCursor("Zoning", ("JURISDICTI"))];
JURIS=set(juris);
# >>> print JURIS
# set([u'COUNTY', u'CITY'])
acres= [row[0] for row in arcpy.da.SearchCursor("Zoning", ("ACRES"))];
key-val= [(row[0], row[1]) for row in arcpy.da.SearchCursor("Zoning", ("JURISDICTI", "ACRES"))]
# how to use dict?
```
</small></small>

5. 输出

![][demo2-test1]

**DOME2, other tests**

1. 其他的几个处理都大同小异，这里只看关键的几个代码

2. 根据属性（非空间的）和位置（空间的）来选择 Feature（表中的行，数据项）

<small><small><small>
```python
arcpy.SelectLayerByAttribute_management("Centract", "NEW_SELECTION", '"POP_90" < 5786.054054');
# arcpy.SelectLayerByLocation_management("Centract", "COMPLETELY_CONTAINS", "MidSchol");
arcpy.SelectLayerByLocation_management("Centract", "COMPLETELY_CONTAINS", "MidSchol", selection_type="SUBSET_SELECTION");
arcpy.SelectLayerByAttribute_management("Counties", "NEW_SELECTION", '"Name" = \'Cobb County\'');
arcpy.SelectLayerByLocation_management("Centract", "COMPLETELY_WITHIN", "Counties", selection_type="SUBSET_SELECTION");
count = arcpy.GetCount_management( "Centract");
print count
percap= [row[0] for row in arcpy.da.SearchCursor("Centract", ("PER_CAPINC"))];
print percap # ===> [19867.69921875, 12793.2998046875, 17364.80078125]
```
</small></small></small>

输出效果

![][demo2-test2]

3. 缓冲区操作，最后导出到 shp 文件


<small><small><small>
```python
# arcpy.analysis.Buffer("vernal_pools", "vernal_pools_Buffer.shp", "2000 Feets", "FULL", "ROUND", "ALL");
# Not Feets, it's Feet
arcpy.analysis.Buffer("vernal_pools", "vernal_pools_Buffer.shp", "2000 Feet", "FULL", "ROUND", "ALL");
arcpy.SelectLayerByLocation_management("parcels", "INTERSECT", "vernal_pools_Buffer");
arcpy.MakeFeatureLayer_management("parcels", "parcels_out") # 靠，直接导出，就是导出 selected features，查了我半天
```
</small></small></small>

> 需要注意的是 `2000 Feet` 不能写成 `2000 Feets`。
> 有时候 ArcGIS 会无故卡死，不知道什么情况
> ![arcgis-died][arcgis-died]

4. 缓冲区操作，并合并

<small><small>
```python
# Processing
arcpy.analysis.Buffer("Roads", "Roads_BUFFER", "500 Meter", "FULL", "ROUND", "ALL");
arcpy.analysis.Buffer("Water", "Water_BUFFER", "500 Meter", "FULL", "ROUND", "ALL");
arcpy.analysis.Union(("Water_BUFFER", "Roads_BUFFER"), "water_road", "ALL", gaps="GAPS")
```
</small></small>

其他
----

1. 其他的部分用 ArcPy 没法搞定，
   首先就是无法打开网络分析的 "Streets_ND" 数据，
   从我查到的资料表明 ArcPy 做不了。
2. 可能是我的 ArcGIS 权限不够的问题，我没法新建 ToolBox。
3. 手工做了一点其他的内容，实在太烂，不敢多发

![][holly-shit]

实习感悟
-------

1. 通过实习，巩固了 ArcGIS 的使用，巩固了 Python 编程；
2. 锻炼了查资料，查文档的能力，英文搜索投放关键字的水平也大大提高了；
3. 熟悉了 Windows 下 [notepad++][notepad++] 的使用， Linux 下 [Bash][bash] 脚本处理文档的小技巧；
4. [这是一个快乐而充实的五一国际劳动节；][shit]
5. 还是 Linux 好用，写报告多方便多了，see:
    * [撰写][linux-1]
    * [编译][linux-2]
    * [查看][linux-3]
    * 还可以随意导出分享, e.g. 本站
    * [Vim is Fantastic！][vim]

[gnat]: https://district10.github.io/about/
[arcgis]: http://en.wikipedia.org/wiki/ArcGIS "其实 ArcGIS 不值那么多"
[python]: https://www.python.org/
[gdal-geoprocessing]: http://jianshu.io/p/a710e7656ddb
[arcpy-book]: http://book.douban.com/subject/22165817/
[my-github]: https://github.com/district10/homework/tree/master/2014/Spatial-Analysis/ArcGIS
[wysiwyg]: http://en.wikipedia.org/wiki/Wysiwyg
[yihui]: http://yihui.name/ "R 大神"
[reproducible-research]: http://biostat.mc.vanderbilt.edu/wiki/pub/Main/UseR-2012/InvitedXieAllaire.pdf "PDF"
[be-late-always]: https://github.com/district10/Pattern_Classification
[arcgis-logo]: http://gnat-tang-shared-image.qiniudn.com/ScreenShots/aa_arcgis_logo.png
[extract-data]: http://gnat-tang-shared-image.qiniudn.com/ScreenShots/ab_extract.png
[load-mxd]: http://gnat-tang-shared-image.qiniudn.com/ScreenShots/ac_load_mxd.png
[load-python-shell]: http://gnat-tang-shared-image.qiniudn.com/ScreenShots/ad_python_shell.png
[paste-and-execute]: http://gnat-tang-shared-image.qiniudn.com/ScreenShots/af_paste_and_execute2.png
[spatial-extension-error]: http://gnat-tang-shared-image.qiniudn.com/ScreenShots/zz_shit.png
[output-msg]: http://gnat-tang-shared-image.qiniudn.com/ScreenShots/ag_processing_msg.png
[output-msg2]: http://gnat-tang-shared-image.qiniudn.com/ScreenShots/ah_processing_msg2.png
[output-done]: http://gnat-tang-shared-image.qiniudn.com/ScreenShots/ai_processing_done.png
[output-map]: http://gnat-tang-shared-image.qiniudn.com/ScreenShots/aj_processing_result.png
[demo2-test1]: http://gnat-tang-shared-image.qiniudn.com/ScreenShots/bb_printout.png
[demo2-test2]: http://gnat-tang-shared-image.qiniudn.com/ScreenShots/bd_done.png
[arcgis-died]: http://gnat-tang-shared-image.qiniudn.com/ScreenShots/bf_error_occurred.png
[holly-shit]: http://gnat-tang-shared-image.qiniudn.com/ScreenShots/fb_holly_shit.png
[notepad++]: http://notepad-plus-plus.org/ "Win 上最好用的之一，如果没有Vim 和 Emacs的话"
[bash]: http://jianshu.io/p/87eefaf092c5 "从小养成 SEO 的好习惯~"
[shit]: http://www.douban.com/group/topic/5212341/?start=213 "靠，ArcGIS 这么无聊，我五一都被你毁了，你当我傻啊"
[linux-1]: http://gnat-tang-shared-image.qiniudn.com/ScreenShots/linux_1.png
[linux-2]: http://gnat-tang-shared-image.qiniudn.com/ScreenShots/linux_2.png
[linux-3]: http://gnat-tang-shared-image.qiniudn.com/ScreenShots/linux_3.png
[vim]:  http://gnat-tang-shared-image.qiniudn.com/ScreenShots/vim.png
