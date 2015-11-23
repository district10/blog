% C++ GUI Programming with Qt4 | C++ GUI Qt4 编程（第二版）
% TANG ZhiXiong
% 2015-11-23

C++ GUI Qt4 编程
================

本书 example 源码是可以免费下到的：[C++ GUI Programming with Qt4, 2nd Edition | InformIT](http://www.informit.com/store/c-plus-plus-gui-programming-with-qt4-9780132354165)


Part I: Basic Qt
----------------

### 1. Getting Started

#### Hello Qt

hello.cpp

```cpp
#include <QApplication>
#include <QLabel>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QLabel *label = new QLabel("Hello Qt!");
    label->show();
    return app.exec();
}
```

hello.pro

```plain
TEMPLATE      = app
SOURCES       = hello.cpp
```

```bash
# Makefile
$ qmake hello.pro
$ make

# template: VC Project
$ qmake -tp vc hello.pro
```

qmake 的帮助

<small><small>
```bash
$ qmake -help
Usage: c:\Qt\qt-4.8.6-x64-msvc2010\qt-4.8.6-x64-msvc2010\bin\qmake.exe [mode] [options] [files]

QMake has two modes, one mode for generating project files based on
some heuristics, and the other for generating makefiles. Normally you
shouldn't need to specify a mode, as makefile generation is the default
mode for qmake, but you may use this to test qmake on an existing project

Mode:
  -project       Put qmake into project file generation mode
                 In this mode qmake interprets files as files to
                 be built,
                 defaults to *.c; *.ui; *.y; *.l; *.ts; *.xlf; *.qrc; *.h; *.hpp; *.hh; *.hxx; *.cpp; *.cc; *.cxx
                 Note: The created .pro file probably will 
                 need to be edited. For example add the QT variable to 
                 specify what modules are required.
  -makefile      Put qmake into makefile generation mode (default)
                 In this mode qmake interprets files as project files to
                 be processed, if skipped qmake will try to find a project
                 file in your current working directory

Warnings Options:
  -Wnone         Turn off all warnings; specific ones may be re-enabled by
                 later -W options
  -Wall          Turn on all warnings
  -Wparser       Turn on parser warnings
  -Wlogic        Turn on logic warnings (on by default)
  -Wdeprecated   Turn on deprecation warnings (on by default)

Options:
   * You can place any variable assignment in options and it will be     *
   * processed as if it was in [files]. These assignments will be parsed *
   * before [files].                                                     *
  -o file        Write output to file
  -d             Increase debug level
  -t templ       Overrides TEMPLATE as templ
  -tp prefix     Overrides TEMPLATE so that prefix is prefixed into the value
  -help          This help
  -v             Version information
  -after         All variable assignments after this will be
                 parsed after [files]
  -norecursive   Don't do a recursive search
  -recursive     Do a recursive search
  -set <prop> <value> Set persistent property
  -unset <prop>  Unset persistent property
  -query <prop>  Query persistent property. Show all if <prop> is empty.
  -cache file    Use file as cache           [makefile mode only]
  -spec spec     Use spec as QMAKESPEC       [makefile mode only]
  -nocache       Don't use a cache file      [makefile mode only]
  -nodepend      Don't generate dependencies [makefile mode only]
  -nomoc         Don't generate moc targets  [makefile mode only]
  -nopwd         Don't look for files in pwd [project mode only]
```
</small></small>

* `%QTDIR%`: `C:\Qt\qt-4.8.6-x64-msvc2010\qt-4.8.6-x64-msvc2010`
* `%QTMAKESPEC%` `win32-msvc2010`

```bash
$ mkdir build && cd build
$ qmake -spec win32-msvc2020 -r -tp vc
```

（这样编译的项目虽然 工程在外面（out of source），但 build 出来的东西，居然在源码的文件夹啊。）



```cpp
QLabel *label = new QLabel("<h2><i>Hello</i> "
                           "<font color=red>Qt!</font></h2>");
```

如果你有一个 cpp 文件，比如 `quit.cpp`，在文件夹下 `qmake -project`{.bash} 可以产生一个 `.pro` Qt 工程文件，
再 `qmake quit.pro`{.bash} 就可以产生 Makefile。

#### Making Connections

`setValue(value)`{.cpp} &rarr; `valueChanged(value)`{.cpp}

Layouts

#. QHBoxLayout
#. QVBoxLayout
#. QGridLayout

```cpp
QWidget *window = new QWidget;
window->setWindowTitle("Enter Your Age");

QSpinBox *spinBox = new QSpinBox;
QSlider *slider = new QSlider(Qt::Horizontal);
spinBox->setRange(0, 130);
slider->setRange(0, 130);

QObject::connect(spinBox, SIGNAL(valueChanged(int)),
                 slider, SLOT(setValue(int)));
QObject::connect(slider, SIGNAL(valueChanged(int)),
                 spinBox, SLOT(setValue(int)));
spinBox->setValue(35);

QHBoxLayout *layout = new QHBoxLayout;
layout->addWidget(spinBox);
layout->addWidget(slider);
window->setLayout(layout);

window->show();

QPushButton *button = new QPushButton("Quit");
QObject::connect(button, SIGNAL(clicked()),
                 &app, SLOT(quit()));
```



```cpp
./hello.exe -style motif
```

#### Using the Reference Documentation

（文档确实丰富。）

### 2. Creating Dialogs




Subclassing QDialog





    Signals and Slots in Depth
    Rapid Dialog Design
    Shape-Changing Dialogs
    Dynamic Dialogs
    Built-in Widget and Dialog Classes

### 3. Creating Main Windows
    Subclassing QMainWindow
    Creating Menus and Toolbars
    Setting Up the Status Bar
    Implementing the File Menu
    Using Dialogs
    Storing Settings
    Multiple Documents
    Splash Screens

### 4. Implementing Application Functionality
    The Central Widget
    Subclassing QTableWidget
    Loading and Saving
    Implementing the Edit Menu
    Implementing the Other Menus
    Subclassing QTableWidgetItem

### 5. Creating Custom Widgets
    Customizing Qt Widgets
    Subclassing QWidget
    Integrating Custom Widgets with Qt Designer
    Double Buffering

Part II: Intermediate Qt
------------------------

### 6. Layout Management
    Laying Out Widgets on a Form
    Stacked Layouts
    Splitters
    Scrolling Areas
    Dock Windows and Toolbars
    Multiple Document Interface

### 7. Event Processing

    Reimplementing Event Handlers
    Installing Event Filters
    Staying Responsive during Intensive Processing

### 8. 2D Graphics
    Painting with QPainter
    Coordinate System Transformations
    High-Quality Rendering with QImage
    Item-Based Rendering with Graphics View
    Printing

### 9. Drag and Drop
    Enabling Drag and Drop
    Supporting Custom Drag Types
    Clipboard Handling

### 10. Item View Classes
    Using the Item View Convenience Classes
    Using Predefined Models
    Implementing Custom Models
    Implementing Custom Delegates

### 11. Container Classes
    Sequential Containers
    Associative Containers
    Generic Algorithms
    Strings, Byte Arrays, and Variants

### 12. Input/Output
    Reading and Writing Binary Data
    Reading and Writing Text
    Traversing Directories
    Embedding Resources
    Inter-Process Communication

### 13. Databases
    Connecting and Querying
    Viewing Tables
    Editing Records Using Forms
    Presenting Data in Tabular Forms

### 14. Multithreading
    Creating Threads
    Synchronizing Threads
    Communicating with the Main Thread
    Using Qt's Classes in Secondary Threads

### 15. Networking
    Writing FTP Clients
    Writing HTTP Clients
    Writing TCP Client–Server Applications
    Sending and Receiving UDP Datagrams

### 16. XML
    Reading XML with QXmlStreamReader
    Reading XML with DOM
    Reading XML with SAX
    Writing XML

### 17. Providing Online Help
    Tooltips, Status Tips, and "What's This?" Help
    Using a Web Browser to Provide Online Help
    Using QTextBrowser as a Simple Help Engine
    Using Qt Assistant for Powerful Online Help

Part III: Advanced Qt
---------------------

### 18. Internationalization
    Working with Unicode
    Making Applications Translation-Aware
    Dynamic Language Switching
    Translating Applications

### 19. Look and Feel Customization

    Using Qt Style Sheets
    Subclassing QStyle
### 20. 3D Graphics
    
    Drawing Using OpenGL
    Combining OpenGL and QPainter
    Doing Overlays Using Framebuffer Objects

### 21. Creating Plugins
    Extending Qt with Plugins
    Making Applications Plugin-Aware
    Writing Application Plugins

### 22. Application Scripting
    Overview of the ECMAScript Language
    Extending Qt Applications with Scripts
    Implementing GUI Extensions Using Scripts
    Automating Tasks through Scripting

### 23. Platform-Specific Features
    Interfacing with Native APIs
    Using ActiveX on Windows
    Handling X11 Session Management

### 24. Embedded Programming
    Getting Started with Qt/Embedded Linux
    Customizing Qt/Embedded Linux
    Integrating Qt Applications with Qtopia
    Using Qtopia APIs

Part IV: Appendixes
-------------------

### Appendix A

Obtaining and Installing Qt
    A Note on Licensing
    Installing Qt/Windows
    Installing Qt/Mac
    Installing Qt/X11
### Appendix B

Building Qt Applications
    Using qmake
    Using Third-Party Build Tools

### Appendix C

Introduction to Qt Jambi
    Getting Started with Qt Jambi
    Using Qt Jambi in the Eclipse IDE
    Integrating C++ Components with Qt Jambi

### Appendix D

Introduction to C++ for Java and C# Programmers
    Getting Started with C++
    Main Language Differences
    The Standard C++ Library
