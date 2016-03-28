---
title: Introduction to Design Patterns in C++ with Qt
date: 2015-12-08
key-words:
tags:
    - cpp
    - qt
    - design pattern
    - code
...

Introduction to Design Patterns in C++ with Qt
==============================================

<!--
:%s/\s\+$//
-->

An Introduction to Design Patterns in C++ with Qt (2nd Edition)

Free download available from [Introduction to Design Patterns in C++ with Qt, 2nd Edition | InformIT](http://www.informit.com/store/introduction-to-design-patterns-in-c-plus-plus-with-9780132826457).

## Chap 13

```cpp
QVariant ObjectBrowserModel::headerData( const int section,
                                         const Qt::Orientation orient,
                                         const int role) const
{
    if ( orient != Qt::Horizontal || role != Qt::DisplayRole )
        return QAbstractItemModel::headerData( section, orient, role );

    switch ( section ) {
        case 0: return "Class Name";
        case 1: return "Object Name";
        case 2: return "Address";
    }
    return QVariant();
}
