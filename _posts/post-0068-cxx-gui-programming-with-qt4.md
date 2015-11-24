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

```bash
./hello.exe -style motif
```

#### Using the Reference Documentation

（文档确实丰富。）

### 2. Creating Dialogs

```cpp
connect(lineEdit, SIGNAL(textChanged(const QString &)),
        this, SLOT(enableFindButton(const QString &)));

QVBoxLayout *leftLayout = new QVBoxLayout;
leftLayout->addLayout(topLeftLayout);
leftLayout->addWidget(caseCheckBox);
leftLayout->addWidget(backwardCheckBox);

QHBoxLayout *mainLayout = new QHBoxLayout;
mainLayout->addLayout(leftLayout);
mainLayout->addLayout(rightLayout);
setLayout(mainLayout);


setWindowTitle(tr("Find"));
setFixedHeight(sizeHint().height()); // ideal height


Qt::CaseSensitivity cs =
        caseCheckBox->isChecked() ? Qt::CaseSensitive
                                  : Qt::CaseInsensitive;
```


`QWidget::sizeHint()` &rarr; "ideal" size.

 The emit keyword is specific to Qt; like other Qt
extensions it is converted into standard C++ by the C++ preprocessor.

 Since the FindDialog class definition contains the Q_OBJECT
macro, the makefile generated by qmake will include special rules to run moc, Qt's meta-object compiler.


QCheckBox *caseCheckBox = new QCheckBox(tr("Match &case"));
QPushButton *closeButton = new QPushButton(tr("Close"));

QWidget::setTabOrder().

#### Signals and Slots in Depth

#. One signal can be connected to many slots:

    When the signal is emitted, the slots are called one after the other, in an unspecified order.

    ```cpp
    connect(slider, SIGNAL(valueChanged(int)),
            spinBox, SLOT(setValue(int)));
    connect(slider, SIGNAL(valueChanged(int)),
            this, SLOT(updateStatusBarIndicator(int)));
    ```

#. Many signals can be connected to the same slot:

    * When either signal is emitted, the slot is called.

    ```cpp
    connect(lcd, SIGNAL(overflow()),
            this, SLOT(handleMathError()));
    connect(calculator, SIGNAL(divisionByZero()),
            this, SLOT(handleMathError()));
    ```

#. A signal can be connected to another signal:

    ```cpp
    connect(lineEdit, SIGNAL(textChanged(const QString &)),
            this, SIGNAL(updateRecord(const QString &)));
    ```

#. Connections can be removed:

    ```cpp
    disconnect(lcd, SIGNAL(overflow()),
               this, SLOT(handleMathError()));
    ```

#. Parameter types

    ```cpp
    // same
    connect(ftp, SIGNAL(rawCommandReply(int, const QString &)),
            this, SLOT(processReply(int, const QString &)));
    // less
    connect(ftp, SIGNAL(rawCommandReply(int, const QString &)),
            this, SLOT(checkErrorCode(int)));
    ```


![set-layout-png]

#### Qt's Meta-Object System

The mechanism is called the meta-object system, and it provides two key services: signals–slots
and introspection.
The introspection functionality is necessary for implementing signals and slots,
and allows application programmers to obtain "meta-information" about QObject subclasses at
run-time, including the list of signals and slots supported by the object and its class name. The
mechanism also supports properties (used extensively by Qt Designer) and text translation (for
internationalization), and it lays the foundation for the QtScript module.

Standard C++ doesn't provide support for the dynamic meta-information needed by Qt's meta-
object system. Qt solves this problem by providing a separate tool, moc, that parses Q_OBJECT
class definitions and makes the information available through C++ functions. Since moc
implements all its functionality using pure C++, Qt's meta-object system works with any C++
compiler.

The mechanism works as follows:

#. The Q_OBJECT macro declares some introspection functions that must be implemented in
   every QObject subclass: metaObject(), tr(), qt_metacall(), and a few more.
#. Qt's moc tool generates implementations for the functions declared by Q_OBJECT and for all
   the signals.
#. QObject member functions such as connect() and disconnect() use the introspection
   functions to do their work.

All of this is handled automatically by qmake, moc, and QObject, so you rarely need to think about
it. But if you are curious, you can read the QMetaObject class documentation and have a look at
the C++ source files generated by moc to see how the implementation works.

```cpp
QRegExp regExp("[A-Za-z][1-9][0-9]{0,2}");
lineEdit->setValidator(new QRegExpValidator(regExp, this));
```


The qmake tool
is smart enough to detect the user interface file gotocelldialog.ui and to generate the appropriate makefile
rules to invoke uic, Qt's user interface compiler. The uic tool converts gotocelldialog.ui into C++ and puts
the result in ui_gotocelldialog.h.

In the constructor, we call setupUi() to initialize the form.

Also in the constructor, we set up a validator to restrict the range of the input. Qt provides three built-in
validator classes: QIntValidator, QDoubleValidator, and QRegExpValidator. Here we use a
QRegExpValidator with the regular expression "[A-Za-z][1-9][0-9]{0,2}", which means: Allow one uppercase
or lowercase letter, followed by one digit in the range 1 to 9, followed by zero, one, or two digits each in the
range 0 to 9. (For an introduction to regular expressions, see the QRegExp class documentation.)

By passing this to the QRegExpValidator constructor, we make it a child of the GoToCellDialog object. By
doing so, we don't have to worry about deleting the QRegExpValidator later; it will be deleted automatically
when its parent is deleted.

Qt's parent–child mechanism is implemented in QObject. When we create an object (a widget, validator, or
any other kind) with a parent, the parent adds the object to the list of its children. When the parent is deleted,
it walks through its list of children and deletes each child. The children themselves then delete all of their
children, and so on recursively until none remain. The parent–child mechanism greatly simplifies memory
management, reducing the risk of memory leaks. The only objects we must call delete on are the objects we
create with new and that have no parent. And if we delete a child object before its parent, Qt will automatically
remove that object from the parent's list of children.
For widgets, the parent has an additional meaning: Child widgets are shown within the parent's area. When we
delete the parent widget, not only does the child vanish from memory, it also vanishes from the screen.
At the end of the constructor, we connect the OK button to QDialog's accept() slot and the Cancel button to
the reject() slot. Both slots close the dialog, but accept() sets the dialog's result value to
QDialog::Accepted (which equals 1), and reject() sets the result to QDialog::Rejected (which equals 0).
When we use this dialog, we can use the result to see if the user clicked OK and act accordingly.

```cpp
// 在 gotocell.h 里继承 UI 文件的类
class GoToCellDialog : public QDialog, public Ui::GoToCellDialog

// 在 gotocell.cpp 里直接用（不用 ui->buttonBox）
connect(buttonBox, SIGNAL(accepted()), this, SLOT(accept()));
connect(buttonBox, SIGNAL(rejected()), this, SLOT(reject()));

// signal/slot 默认名称的，也直接实现即可
void GoToCellDialog::on_lineEdit_textChanged()
{
    buttonBox->button(QDialogButtonBox::Ok)->setEnabled(
    lineEdit->hasAcceptableInput());
}
```

#### Rapid Dialog Design

![][chape-chaning-dlg]

We will create the widget with its extended appearance in Qt Designer, and hide the secondary and tertiary
keys at run-time as needed. The widget looks complicated, but it's fairly easy to do in Qt Designer. The trick is
to do the primary key part first, then duplicate it twice to obtain the secondary and tertiary keys


#### Shape-Changing Dialogs

![][layout-three-parts]
![][connecting]
![][connecting2]

```cpp
secondaryGroupBox->hide();
tertiaryGroupBox->hide();
layout()->setSizeConstraint(QLayout::SetFixedSize); // 固定尺寸

QChar ch = first;
while (ch <= last) {
    primaryColumnCombo->addItem(QString(ch));
    ch = ch.unicode() + 1;
}
```



The other common type of shape-changing dialogs, multi-page dialogs, are even easier to create in Qt, either
in code or using Qt Designer. Such dialogs can be built in many different ways.

#. A QTabWidget can be used in its own right. It provides a tab bar that controls a built-in QStackedWidget.
#. A QListWidget and a QStackedWidget can be used together, with the QListWidget's current item
   determining which page the QStackedWidget shows, by connecting the
   QListWidget::currentRowChanged() signal to the QStackedWidget::setCurrentIndex() slot.
#. A QTreeWidget can be used with a QStackedWidget in a similar way to a QListWidget.

#### Dynamic Dialogs

Dynamic dialogs are dialogs that are created from Qt Designer .ui files at run-time. Instead of converting the
.ui file to C++ code using uic, we can load the file at run-time using the QUiLoader class:

```cpp
QUiLoader uiLoader;
QFile file("sortdialog.ui");
QWidget *sortDialog = uiLoader.load(&file);
if (sortDialog) {
    ...
}
```

We can access the form's child widgets using QObject::findChild<T>():

```cpp
QComboBox *primaryColumnCombo =
    sortDialog->findChild<QComboBox *>("primaryColumnCombo");
if (primaryColumnCombo) {
    ...
}
```

#### Built-in Widget and Dialog Classes

#. Single-page container widgets
    i. QPushButon
    #. QToolButton
    #. QCheckBox
    #. QRadioButton
#. Multi-page container widgets
    i. QGroupBox
    #. QFrame
#. Item viw widgets
    i. QTabWidget
    #. QToolBox
#. Display widgets
    i. QListView
    #. QTreeView
    #. QListVIew (as icons)
    #. QTableView
#. Input widgets
    i. QLabel (text)
    #. QLabel (image)
    #. QLCDNumber
    #. QProgressBar
    #. QTextBrowser
    #. QSpinBox
    #. QDoubleSpinBox
    #. QComboBox
    #. QDateEdit
    #. QTimeEdit
    #. QDateTimeEdit
    #. QScrollBar
    #. QSlider
    #. QLineEdit
    #. QDial
#. Feedback dialogs
    i. QTextEdit
    #. QInputDialog
    #. QProgressDialog
    #. QMessageBox
    #. QErrorMessage
#. Color and font dialogs
    i. QColorDialog
    #. QFontDialog
#. File and print dialogs
    i. QPageSetupDialog
    #. QFileDialog
    #. QPrintDialog
#. QWizard dialog

### 3. Creating Main Windows

![][mainwindow]


#### Subclassing QMainWindow

```cpp
class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow();

protected:
    void closeEvent(QCloseEvent *event);

private slots:
    void newFile();
    void open();
    bool save();
    bool saveAs();
    void find();
    void goToCell();
    void sort();
    void about();
    void openRecentFile();
    void updateStatusBar();
    void spreadsheetModified();
    ...

private:
    void createActions();
    void createMenus();
    void createContextMenu();
    void createToolBars();
    void createStatusBar();
    void readSettings();
    void writeSettings();
    ...

    Spreadsheet *spreadsheet;
    FindDialog *findDialog;
    QLabel *locationLabel;
    QLabel *formulaLabel;
    QStringList recentFiles;
    QString curFile;

    enum { MaxRecentFiles = 5 };
    QAction *recentFileActions[MaxRecentFiles];
    QAction *separatorAction;

    QMenu *fileMenu;
    QMenu *editMenu;
    QMenu *selectSubMenu;
    QMenu *toolsMenu;
    ...
```


`.pro`

```plain
RESOURCES = spreadsheet.qrc
```

`.qrc`

```xml
<RCC>
<qresource>
    <file>images/icon.png</file>
    ...
    <file>images/gotocell.png</file>
</qresource>
</RCC>
```

#### Creating Menus and Toolbars

![][menu]


```cpp
void MainWindow::createActions()
{
    newAction = new QAction(tr("&New"), this);
    newAction->setIcon(QIcon(":/images/new.png"));
    newAction->setShortcut(QKeySequence::New);
    newAction->setStatusTip(tr("Create a new spreadsheet file"));
    connect(newAction, SIGNAL(triggered()), this, SLOT(newFile()));

    openAction...
    saveAction...
    saveAsAction...

    for (int i = 0; i < MaxRecentFiles; ++i) {
        recentFileActions[i] = new QAction(this);
        recentFileActions[i]->setVisible(false);
        connect(recentFileActions[i], SIGNAL(triggered()),
                this, SLOT(openRecentFile()));
    }

    exitAction...
    cutAction...
    copyAction...
    pasteAction...
    deleteAction...
    selectRowAction...
    selectColumnAction...
    selectAllAction...
    findAction...
    goToCellAction...
    recalculateAction...
    sortAction...

    showGridAction = new QAction(tr("&Show Grid"), this);
    showGridAction->setCheckable(true);
    showGridAction->setChecked(spreadsheet->showGrid());
    showGridAction->setStatusTip(tr("Show or hide the spreadsheet's "
                                    "grid"));
    connect(showGridAction, SIGNAL(toggled(bool)),
            spreadsheet, SLOT(setShowGrid(bool)));
#if QT_VERSION < 0x040102
    // workaround for a QTableWidget bug in Qt 4.1.1
    connect(showGridAction, SIGNAL(toggled(bool)),
            spreadsheet->viewport(), SLOT(update()));
#endif

    autoRecalcAction = new QAction(tr("&Auto-Recalculate"), this);
    autoRecalcAction->setCheckable(true);
    autoRecalcAction->setChecked(spreadsheet->autoRecalculate());
    autoRecalcAction->setStatusTip(tr("Switch auto-recalculation on or "
                                      "off"));
    connect(autoRecalcAction, SIGNAL(toggled(bool)),
            spreadsheet, SLOT(setAutoRecalculate(bool)));

    aboutAction = new QAction(tr("&About"), this);
    aboutAction->setStatusTip(tr("Show the application's About box"));
    connect(aboutAction, SIGNAL(triggered()), this, SLOT(about()));

    aboutQtAction = new QAction(tr("About &Qt"), this);
    aboutQtAction->setStatusTip(tr("Show the Qt library's About box"));
    connect(aboutQtAction, SIGNAL(triggered()), qApp, SLOT(aboutQt()));
}
```

Show Grid is a checkable action. Checkable actions are rendered with a check-mark in the menu and
implemented as toggle buttons in the toolbar. When the action is turned on, the Spreadsheet component
displays a grid. We initialize the action with the default for the Spreadsheet component so that they are
synchronized at startup.

```cpp
void MainWindow::createMenus()
{
    // QMainWindow::menuBar() function returns a pointer to a QMenuBar. 
    // The menu bar is created the first time menuBar() is called.
    fileMenu = menuBar()->addMenu(tr("&File"));
    fileMenu->addAction(newAction);
    fileMenu->addAction(openAction);
    fileMenu->addAction(saveAction);
    fileMenu->addAction(saveAsAction);
    separatorAction = fileMenu->addSeparator();
    for (int i = 0; i < MaxRecentFiles; ++i)
        fileMenu->addAction(recentFileActions[i]);
    fileMenu->addSeparator();
    fileMenu->addAction(exitAction);

    editMenu, toolsMenu, optionsMenu...

    menuBar()->addSeparator();

    helpMenu...
```

![][context-menu]

```cpp
void MainWindow::createContextMenu()
{
    spreadsheet->addAction(cutAction);
    spreadsheet->addAction(copyAction);
    spreadsheet->addAction(pasteAction);
    spreadsheet->setContextMenuPolicy(Qt::ActionsContextMenu);
}
```

A more sophisticated way of providing context menus is to reimplement the QWidget::contextMenuEvent()
function, create a QMenu widget, populate it with the desired actions, and call exec() on it.


![][toolbar]

```cpp
void MainWindow::createToolBars()
{
    fileToolBar = addToolBar(tr("&File"));
    fileToolBar->addAction(newAction);
    ...

    editToolBar = addToolBar(tr("&Edit"));
    ...
    editToolBar->addSeparator();
    ...
}
```

#### Setting Up the Status Bar

![][status-bar]

```cpp
void MainWindow::createStatusBar()
{
    locationLabel = new QLabel(" W999 ");
    locationLabel->setAlignment(Qt::AlignHCenter);
    locationLabel->setMinimumSize(locationLabel->sizeHint());

    formulaLabel = new QLabel;
    formulaLabel->setIndent(3);

    // The QMainWindow::statusBar() function returns a pointer to the status bar. 
    // (The status bar is created the first time statusBar() is called.)
    statusBar()->addWidget(locationLabel);
    statusBar()->addWidget(formulaLabel, 1);

    connect(spreadsheet, SIGNAL(currentCellChanged(int, int, int, int)),
            this, SLOT(updateStatusBar()));
    connect(spreadsheet, SIGNAL(modified()),
            this, SLOT(spreadsheetModified()));

    updateStatusBar();
}
```

```cpp
void MainWindow::updateStatusBar()
{
    locationLabel->setText(spreadsheet->currentLocation());
    formulaLabel->setText(spreadsheet->currentFormula());
}
```

#### Implementing the File Menu

```cpp
void MainWindow::newFile()
{
    if (okToContinue()) {
        spreadsheet->clear();
        setCurrentFile("");
    }
}


bool MainWindow::okToContinue()
{
    if (isWindowModified()) {
        int r = QMessageBox::warning(this, tr("Spreadsheet"),
                        tr("The document has been modified.\n"
                           "Do you want to save your changes?"),
                        QMessageBox::Yes | QMessageBox::No
                        | QMessageBox::Cancel);
        if (r == QMessageBox::Yes) {
            return save();
        } else if (r == QMessageBox::Cancel) {
            return false;
        }
    }
    return true;
}
```

```cpp
QMessageBox::warning(parent, title, message, buttons);
```

![][qmessagebox-style]


```cpp
QString fileName = 
    QFileDialog::getOpenFileName(this,
                                 tr("Open Spreadsheet"), ".",
                                 tr("Spreadsheet files (*.sp)"));
if (!fileName.isEmpty())
    loadFile(fileName);
```


```cpp
bool MainWindow::save()
{
    if (curFile.isEmpty()) {
        return saveAs();
    } else {
        return saveFile(curFile);
    }
}


QString fileName = 
    QFileDialog::getSaveFileName(this,
                                 tr("Save Spreadsheet"), ".",
                                 tr("Spreadsheet files (*.sp)"));
if (fileName.isEmpty())
    return false;
```

```cpp
QFileDialog::getOpenFileName(parent, title, filter);
QFileDialog::getSaveFileName(parent, title, filter);
```

QWidget::closeEvent(), we can intercept
attempts to close the main window and decide whether we want the window to actually close or not.

```cpp
void MainWindow::closeEvent(QCloseEvent *event)
{
    if (okToContinue()) {
        writeSettings();
        event->accept();
    } else {
        event->ignore();
    }
}
```

```cpp
void MainWindow::setCurrentFile(const QString &fileName)
{
    curFile = fileName;
    setWindowModified(false);

    QString shownName = tr("Untitled");
    if (!curFile.isEmpty()) {
        shownName = strippedName(curFile);
        recentFiles.removeAll(curFile);
        recentFiles.prepend(curFile);
        updateRecentFileActions();
    }

    setWindowTitle(tr("%1[*] - %2").arg(shownName)
                                   .arg(tr("Spreadsheet")));

    for (int j = 0; j < MaxRecentFiles; ++j) {
        if (j < recentFiles.count()) {
            QString text = tr("&%1 %2")
                           .arg(j + 1)
                           .arg(strippedName(recentFiles[j]));
            recentFileActions[j]->setText(text);
            recentFileActions[j]->setData(recentFiles[j]); // QVariant
            recentFileActions[j]->setVisible(true);
        } else {
            recentFileActions[j]->setVisible(false);
        }
    }
    separatorAction->setVisible(!recentFiles.isEmpty()); // 五体投地！
}

QString MainWindow::strippedName(const QString &fullFileName)
{
    return QFileInfo(fullFileName).fileName();
}

QMutableStringListIterator i(recentFiles);
while (i.hasNext()) {
    if (!QFile::exists(i.next()))
        i.remove();
}
```


Every action can have an associated "data" item of type QVariant. The QVariant type can hold values of
many C++ and Qt types; we cover it in Chapter 11. Here, we store the full name of the file in the action's
"data" item so that we can easily retrieve it later. We also set the action to be visible.


The qobject_cast<T>() function performs a dynamic cast based on the meta-information generated by moc,
Qt's meta-object compiler. It returns a pointer of the requested QObject subclass, or 0 if the object cannot be
cast to that type. Unlike the Standard C++ dynamic_cast<T>(), Qt's qobject_cast<T>() works correctly
across dynamic library boundaries. In our example, we use qobject_cast<T>() to cast a QObject pointer to a
QAction pointer. If the cast is successful (it should be), we call loadFile() with the full file name that we
extract from the action's data.

```cpp
// connect(recentFileActions[i], SIGNAL(triggered()),
//         this, SLOT(openRecentFile()))

void MainWindow::openRecentFile()
{
    if (okToContinue()) {
        QAction *action = qobject_cast<QAction *>(sender());
        if (action)
            loadFile(action->data().toString());
    }
}
```

#### Using Dialogs

![][dialog]


```cpp
void MainWindow::find()
{
    if (!findDialog) {
        findDialog = new FindDialog(this);
        connect(findDialog, SIGNAL(findNext(const QString &,
                                            Qt::CaseSensitivity)),
                spreadsheet, SLOT(findNext(const QString &,
                                           Qt::CaseSensitivity)));
        connect(findDialog, SIGNAL(findPrevious(const QString &,
                                                Qt::CaseSensitivity)),
                spreadsheet, SLOT(findPrevious(const QString &,
                                               Qt::CaseSensitivity)));
    }

    findDialog->show();
    findDialog->raise();
    findDialog->activateWindow();
}
```

several scenarios are possible:

#. This is the first time the user has invoked the Find dialog. (`new`{.cpp})
#. The Find dialog was invoked before, but the user closed it. (`show()`{.cpp})
#. The Find dialog was invoked before and is still visible. (`raise(), activateWindow()`{.cpp})

A dialog is modeless if it's invoked using show() (unless we call setModal() beforehand to make it modal); it
is modal if it's invoked using exec().

```cpp
void MainWindow::goToCell()
{
    GoToCellDialog dialog(this); // 一次性 dialog
    if (dialog.exec()) {
        QString str = dialog.lineEdit->text().toUpper();
        spreadsheet->setCurrentCell(str.mid(1).toInt() - 1,
                                    str[0].unicode() - 'A'); // 五体投地
    }
}
```

Creating modal dialogs (and context menus) on the stack is a common programming pattern since we usually
don't need the dialog (or menu) after we have used it, and it will automatically be destroyed at the end of the
enclosing scope.

A more radical approach would be to pass a pointer to the Spreadsheet object when initializing the
SortDialog object and to allow the dialog to operate directly on the Spreadsheet. This makes the
SortDialog much less general, since it will work only on a certain type of widget, but it simplifies the code
even further by eliminating the SortDialog::setColumnRange() function. The MainWindow::sort() function
then becomes

```cpp
void MainWindow::sort()
{
    SortDialog dialog(this);
    dialog.setSpreadsheet(spreadsheet);
    dialog.exec();
}
```

```cpp
void MainWindow::about()
{
    QMessageBox::about(this, tr("About Spreadsheet"),
            tr("<h2>Spreadsheet 1.1</h2>"
               "<p>Copyright &copy; 2008 Software Inc."
               "<p>Spreadsheet is a small application that "
               "demonstrates QAction, QMainWindow, QMenuBar, "
               "QStatusBar, QTableWidget, QToolBar, and many other "
               "Qt classes."));
}
```

So far, we have used several convenience static functions from both QMessageBox and QFileDialog. These
functions create a dialog, initialize it, and call exec() on it. It is also possible, although less convenient, to
create a QMessageBox or a QFileDialog widget like any other widget and explicitly call exec(), or even
show(), on it.

#### Storing Settings

```cpp
void MainWindow::writeSettings()
{
    QSettings settings("Software Inc.", "Spreadsheet");

    settings.setValue("geometry", saveGeometry());
    settings.setValue("recentFiles", recentFiles);
    settings.setValue("showGrid", showGridAction->isChecked());
    settings.setValue("autoRecalc", autoRecalcAction->isChecked());
}

void MainWindow::readSettings()
{
    QSettings settings("Software Inc.", "Spreadsheet");

    restoreGeometry(settings.value("geometry").toByteArray());

    recentFiles = settings.value("recentFiles").toStringList();
    updateRecentFileActions();

    bool showGrid = settings.value("showGrid", true).toBool();
    showGridAction->setChecked(showGrid);

    bool autoRecalc = settings.value("autoRecalc", true).toBool();
    autoRecalcAction->setChecked(autoRecalc);
}
```

By default, QSettings stores the application's settings in platform-specific locations. On Windows, it uses the
system registry; on Unix, it stores the data in text files; on Mac OS X, it uses the Core Foundation Preferences
API.

QSettings stores settings as key–value pairs. The key is similar to a file system path. Subkeys can be
specified using a path-like syntax (e.g., findDialog/matchCase) or using beginGroup() and endGroup():

```cpp
settings.beginGroup("findDialog");
settings.setValue("matchCase", caseCheckBox->isChecked());
settings.setValue("searchBackward",  backwardCheckBox->isChecked());
settings.endGroup()
```

#### Multiple Documents

![][multi-document]

```cpp
connect(exitAction, SIGNAL(triggered()),
        qApp, SLOT(closeAllWindows()));
```

The QApplication::closeAllWindows() slot closes all of the application's windows, unless one of them
rejects the close event. This is exactly the behavior we need here. We don't have to worry about unsaved
changes because that's handled in MainWindow::closeEvent() whenever a window is closed.

```cpp
MainWindow::MainWindow()
{
    ...
    // This tells Qt to delete the window when it is closed. The
    // Qt::WA_DeleteOnClose attribute is one of many flags
    // that can be set on a QWidget to influence its behavior.
    setAttribute(Qt::WA_DeleteOnClose);
    ...
}

foreach (QWidget *win, QApplication::topLevelWidgets()) {
    if (MainWindow *mainWin = qobject_cast<MainWindow *>(win)) {
        mainWin->updateRecentFileActions();
    }
}
```

#### Splash Screens

```cpp
int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QSplashScreen *splash = new QSplashScreen;
    splash->setPixmap(QPixmap(":/images/splash.png"));
    splash->show();

    Qt::Alignment topRight = Qt::AlignRight | Qt::AlignTop;
    splash->showMessage(QObject::tr("Setting up the main window..."),
                        topRight, Qt::white);

    MainWindow mainWin;

    splash->showMessage(QObject::tr("Loading modules..."),
                        topRight, Qt::white);
    loadModules();

    splash->showMessage(QObject::tr("Establishing connections..."),
                        topRight, Qt::white);
    establishConnections();

    mainWin.show();

    splash->finish(&mainWin);
    delete splash;

    return app.exec();
}
```

### 4. Implementing App Functionality

#### The Central Widget

The central area of a QMainWindow can be occupied by any kind of widget. Here's
an overview of the possibilities:

#. Use a standard Qt widget: QTableWidget, QTextEdit
#. Use a custom widget
#. Use a plain QWidget with a layout manager
#. Use a splitter
#. Use an MDI area

![][table-widget]

```cpp
// spreadsheet.h
private:
    QString text(int row, int column) const;

// spreadsheet.cpp
QString Spreadsheet::text(int row, int column) const
{
    Cell *c = cell(row, column);
    if (c) {
        return c->text();
    } else {
        return "";
    }
}
```

Qt's item classes can be used out of the box as data holders. For example, a
QTableWidgetItem already stores a few attributes, including a string, font, color, and icon,
and a pointer back to the QTableWidget. The items can also hold data (QVariants),
including registered custom types, and by subclassing the item class we can provide
additional functionality.

Older toolkits provide a void pointer in their item classes to store custom data. In Qt, the
more natural approach is to use setData() with a QVariant, but if a void pointer is
required, it can be trivially achieved by subclassing an item class and adding a void pointer
member variable.
For more challenging data handling requirements, such as large data sets, complex data
items, database integration, and multiple data views, Qt provides a set of model/view
classes that separate the data from their visual representation.

```cpp
void Spreadsheet::setFormula(int row, int column,
                             const QString &formula)
{
    Cell *c = cell(row, column);
    if (!c) {
        c = new Cell;
        setItem(row, column, c);
    }
    c->setFormula(formula);
}
```

#### Loading and Saving

```cpp
bool Spreadsheet::writeFile(const QString &fileName)
{
    QFile file(fileName);
    if (!file.open(QIODevice::WriteOnly)) {
        QMessageBox::warning(this, tr("Spreadsheet"),
                             tr("Cannot write file %1:\n%2.")
                             .arg(file.fileName())
                             .arg(file.errorString()));
        return false;
    }

    QDataStream out(&file);
    out.setVersion(QDataStream::Qt_4_3);

    out << quint32(MagicNumber);

    QApplication::setOverrideCursor(Qt::WaitCursor);
    for (int row = 0; row < RowCount; ++row) {
        for (int column = 0; column < ColumnCount; ++column) {
            QString str = formula(row, column);
            if (!str.isEmpty())
                out << quint16(row) << quint16(column) << str;
        }
    }
    QApplication::restoreOverrideCursor();
    return true;
}

bool Spreadsheet::readFile(const QString &fileName)
{
    QFile file(fileName);
    if (!file.open(QIODevice::ReadOnly)) {
        QMessageBox::warning(this, tr("Spreadsheet"),
                             tr("Cannot read file %1:\n%2.")
                             .arg(file.fileName())
                             .arg(file.errorString()));
        return false;
    }

    QDataStream in(&file);
    in.setVersion(QDataStream::Qt_4_3);

    quint32 magic;
    in >> magic;
    if (magic != MagicNumber) {
        QMessageBox::warning(this, tr("Spreadsheet"),
                             tr("The file is not a Spreadsheet file."));
        return false;
    }

    clear();

    quint16 row;
    quint16 column;
    QString str;

    QApplication::setOverrideCursor(Qt::WaitCursor);
    while (!in.atEnd()) {
        in >> row >> column >> str;
        setFormula(row, column, str);
    }
    QApplication::restoreOverrideCursor();
    return true;
}
```

QDataStream is very versatile. It can be used on a QFile, and also on a
QBuffer, a QProcess, a QTcpSocket, a QUdpSocket, or a QSslSocket. Qt also
offers a QTextStream class that can be used instead of QDataStream for reading
and writing text files. Chapter 12 explains these classes in depth, and also
describes various approaches to handling different QDataStream versions.

The system clipboard is available in Qt through the QApplication::clipboard()
static function. By calling QClipboard::setText(), we make the text available
on the clipboard, both to this application and to other applications that
support plain text. 

```cpp
void Spreadsheet::cut()
{
    copy();
    del();
}

void Spreadsheet::copy()
{
    QTableWidgetSelectionRange range = selectedRange();
    QString str;

    for (int i = 0; i < range.rowCount(); ++i) {
        if (i > 0)
            str += "\n";
        for (int j = 0; j < range.columnCount(); ++j) {
            if (j > 0)
                str += "\t";
            str += formula(range.topRow() + i, range.leftColumn() + j);
        }
    }
    QApplication::clipboard()->setText(str);
}

void Spreadsheet::paste()
{
    QTableWidgetSelectionRange range = selectedRange();
    QString str = QApplication::clipboard()->text();
    QStringList rows = str.split('\n');
    int numRows = rows.count();
    int numColumns = rows.first().count('\t') + 1;

    if (range.rowCount() * range.columnCount() != 1
            && (range.rowCount() != numRows
                || range.columnCount() != numColumns)) {
        QMessageBox::information(this, tr("Spreadsheet"),
                tr("The information cannot be pasted because the copy "
                   "and paste areas aren't the same size."));
        return;
    }

    for (int i = 0; i < numRows; ++i) {
        QStringList columns = rows[i].split('\t');
        for (int j = 0; j < numColumns; ++j) {
            int row = range.topRow() + i;
            int column = range.leftColumn() + j;
            if (row < RowCount && column < ColumnCount)
                setFormula(row, column, columns[j]);
        }
    }
    somethingChanged();
}
```

```cpp
QList<QStringList> rows;
qStableSort(rows.begin(), rows.end(), compare);
```

The qStableSort() function accepts a begin iterator, an end iterator, and a
comparison function. The comparison function is a function that takes two
arguments (two QStringLists) and that returns true if the first argument is
"less than" the second argument, false otherwise. The compare object we pass as
the comparison function isn't really a function, but it can be used as one, as
we will see shortly.

#### Subclassing QTableWidget

```cpp
QVariant Cell::evalFactor(const QString &str, int &pos) const
{
    QVariant result;
    bool negative = false;

    if (str[pos] == '-') {
        negative = true;
        ++pos;
    }

    if (str[pos] == '(') {
        ++pos;
        result = evalExpression(str, pos);
        if (str[pos] != ')')
            result = Invalid;
        ++pos;
    } else {
        QRegExp regExp("[A-Za-z][1-9][0-9]{0,2}");
        QString token;

        while (str[pos].isLetterOrNumber() || str[pos] == '.') {
            token += str[pos];
            ++pos;
        }

        if (regExp.exactMatch(token)) {
            int column = token[0].toUpper().unicode() - 'A';
            int row = token.mid(1).toInt() - 1;

            Cell *c = static_cast<Cell *>(
                              tableWidget()->item(row, column));
            if (c) {
                result = c->value();
            } else {
                result = 0.0;
            }
        } else {
            bool ok;
            result = token.toDouble(&ok);
            if (!ok)
                result = Invalid;
        }
    }

    if (negative) {
        if (result.type() == QVariant::Double) {
            result = -result.toDouble();
        } else {
            result = Invalid;
        }
    }
    return result;
}
```

#### Implementing the Edit Menu
#### Implementing the Other Menus
#### Subclassing QTableWidgetItem

### 5. Creating Custom Widgets

#### Customizing Qt Widgets

![][hex-spin-widget]

```cpp
QSpinBox::setRange(0, 255);
QRegExpValidator *validator = new QRegExpValidator(QRegExp("[0-9A-Fa-f]{1,8}"), this);

// called by QSpinBox when the user types a value into the editor part of the
// spin box and presses Enter
int HexSpinBox::valueFromText(const QString &text) const
{
    return text.toInt( NULL, 16);
}

// QSpinBox calls it to update the editor part of the spin box when the user
// presses the spin box's up or down arrows.
QString HexSpinBox::textFromValue(int value) const
{
    return QString::number(value, 16).toUpper(); // lowercase
}

// called by QSpinBox to see if the text entered so far is valid. There are three
// possible results: Invalid (the text doesn't match the regular expression),
// Intermediate (the text is a plausible part of a valid value), and Acceptable
// (the text is valid). The eQRegExpValidator has a suitable validate() function,
// so we simply return the result of calling it. In theory, we should return
// Invalid or Intermediate for evalues that lie outside the spin box's range, but
// QSpinBox is smart enough to detect that condition without any help.
// QValidator::State HexSpinBox::validate(QString &text, int &pos) const
{
    return validator->validate(text, pos);
}
```

We have now finished the hexadecimal spin box. Customizing other Qt widgets
follows the same pattern: Pick a suitable Qt widget, subclass it, and
reimplement some virtual functions to change its behavior. If all we want to do
is to customize an existing widget's look and feel, we can apply a style sheet
or implement a custom style instead of subclassing the widget, as explained in
Chapter 19.

#### Subclassing QWidget

```cpp
class IconEditor : public QWidget
{
    Q_OBJECT
    Q_PROPERTY(QColor penColor READ penColor WRITE setPenColor)
    Q_PROPERTY(QImage iconImage READ iconImage WRITE setIconImage)
    Q_PROPERTY(int zoomFactor READ zoomFactor WRITE setZoomFactor)
    ...
```

The IconEditor class uses the Q_PROPERTY() macro to declare three custom properties: penColor,
iconImage, and zoomFactor. Each property has a data type, a "read" function, and an optional "write"
function. For example, the penColor property is of type QColor and can be read and written using the
penColor() and setPenColor() functions.

```cpp
protected:
    void mousePressEvent(QMouseEvent *event);
    void mouseMoveEvent(QMouseEvent *event);
    void paintEvent(QPaintEvent *event);
```

```cpp
IconEditor::IconEditor(QWidget *parent)
    : QWidget(parent)
{
    // the widget's content doesn't change when the widget is resized and that the
    // content stays rooted to the widget's top-left corner
    setAttribute(Qt::WA_StaticContents);


    /*
        By calling setSizePolicy() in the constructor with QSizePolicy::Minimum as
        horizontal and vertical policies, we tell any layout manager that is
        responsible for this widget that the widget's size hint is really its minimum
        size. In other words, the widget can be stretched if required, but it should
        never shrink below the size hint. 
    */
    setSizePolicy(QSizePolicy::Minimum, QSizePolicy::Minimum);

    curColor = Qt::black;
    zoom = 8;

    image = QImage(16, 16, QImage::Format_ARGB32);
    image.fill(qRgba(0, 0, 0, 0));
}

//                r   g  b   a
QRgb red = qRgba(255, 0, 0, 255);
QRgb red = 0xFFFF0000; // typedef of unsigned int   
```

```cpp
// IconEditor.h
public:
    QSize sizeHint() const;

// IconEditor.cpp
QSize IconEditor::sizeHint() const
{
    QSize size = zoom * image.size();
    if (zoom >= 3)
        size += QSize(1, 1);
    return size;
}
```

```cpp
void IconEditor::setIconImage(const QImage &newImage)
{
    if (newImage != image) {

        image = newImage.convertToFormat(QImage::Format_ARGB32);

        // call QWidget::update() to schedule a repainting of the widget
        // using the new image
        update();

        // call QWidget::updateGeometry() to tell any layout that contains the
        // widget that the widget's size hint has changed. The layout will then
        // automatically adapt to the new size hint.
        updateGeometry();
    }
}
```

force a paint event by calling QWidget::update() or QWidget::repaint(). The
difference between these two functions is that repaint() forces an immediate
repaint, whereas update() simply schedules a paint event for when Qt next
processes events. (Both functions do nothing if the widget isn't visible
on-screen.) 

```cpp
void IconEditor::paintEvent(QPaintEvent *event)
{
    QPainter painter(this);

    // If the zoom factor is 3 or more, we draw the horizontal and vertical
    // lines that form the grid using the QPainter::drawLine() function.
    if (zoom >= 3) {

        // set new color
        painter.setPen(palette().foreground().color());
        for (int i = 0; i <= image.width(); ++i)
            // x1, x2, y1, y2, topLeft <= (0,0), x <= width, y <= height
            painter.drawLine(zoom * i, 0,
                             zoom * i, zoom * image.height());
        for (int j = 0; j <= image.height(); ++j)
            painter.drawLine(0, zoom * j,
                             zoom * image.width(), zoom * j);
    }

    for (int i = 0; i < image.width(); ++i) {
        for (int j = 0; j < image.height(); ++j) {
            QRect rect = pixelRect(i, j);
            if (!event->region().intersect(rect).isEmpty()) {
                QColor color = QColor::fromRgba(image.pixel(i, j));
                if (color.alpha() < 255)
                    painter.fillRect(rect, Qt::white);
                painter.fillRect(rect, color);
            }
        }
    }
}
```


A widget's palette consists of three color groups: active, inactive, and
disabled. Which color group should be used depends on the widget's current
state:

#.  The Active group is used for widgets in the currently active window.
#. The Inactive group is used for widgets in the other windows.
#. The Disabled group is used for disabled widgets in any window.

get an appropriate brush or color for drawing, the correct approach is to use
the current palette, obtained from QWidget::palette(), and the required role,
for example, QPalette::foreground().

The pixelRect() function returns a QRect suitable for QPainter::fillRect(). The
i and j parameters are pixel coordinates in the QImage—not in the widget. If
the zoom factor is 1, the two coordinate systems coincide exactly.

```cpp
QRect IconEditor::pixelRect(int i, int j) const
{
    if (zoom >= 3) {
        return QRect(zoom * i + 1, zoom * j + 1, zoom - 1, zoom - 1);
    } else {
        return QRect(zoom * i, zoom * j, zoom, zoom); // tl_x, tl_y, w, h
    }
}
```

```cpp
void IconEditor::mousePressEvent(QMouseEvent *event)
{
    if (event->button() == Qt::LeftButton) {
        setImagePixel(event->pos(), true);
    } else if (event->button() == Qt::RightButton) {
        setImagePixel(event->pos(), false);
    }
}
```

mouseMoveEvent() handles "mouse move" events. By default, these events are
generated only when the user is holding down a button. It is possible to change
this behavior by calling QWidget::setMouseTracking(), but we don't need to do
so for this example.

```cpp
void IconEditor::setImagePixel(const QPoint &pos, bool opaque)
{
    // widget coordinates ==> image coordinates
    int i = pos.x() / zoom;
    int j = pos.y() / zoom;

    // check whether the point is within the correct range
    if (image.rect().contains(i, j)) {
        if (opaque) {
            image.setPixel(i, j, penColor().rgba());
        } else {
            image.setPixel(i, j, qRgba(0, 0, 0, 0));
        }

        update(pixelRect(i, j));
    }
}
```

#### Integrating Custom Widgets with Qt Designer
we must subclass QDesignerCustomWidgetInterface and reimplement some virtual
functions. We will assume that the plugin source code is located in a directory
called iconeditorplugin and that the IconEditor source code is located in a
parallel directory called iconeditor.  

```cpp
#include <QDesignerCustomWidgetInterface>

class IconEditorPlugin : public QObject,
                         public QDesignerCustomWidgetInterface
{
    Q_OBJECT
    Q_INTERFACES(QDesignerCustomWidgetInterface)

public:
    IconEditorPlugin(QObject *parent = 0);

    // the name of the widget provided by the plugin
    QString name() const { return "IconEditor"; }

    // the name of the header file for the specified widget encapsulated by the
    // plugin
    QString includeFile() const { return "iconeditor.h"; }

    // the name of the widget box group to which this custom widget should
    // belong. If the name isn't already in use, Qt Designer will create a new
    // group for the widget
    QString group() const;

    // the icon to use to represent the custom widget in Qt Designer's widget
    // box
    QIcon icon() const;

    QString toolTip() const;
    QString whatsThis() const;

    // true if the widget can contain other widgets; otherwise, it returns
    // false
    bool isContainer() const;

    // Qt Designer calls the createWidget() function to create an instance of a
    // widget class with the given parent
    QWidget *createWidget(QWidget *parent);
};

// .cpp
Q_EXPORT_PLUGIN2(iconeditorplugin, IconEditorPlugin)
```

`.pro`

```
TEMPLATE      = lib
CONFIG       += designer plugin release
HEADERS       = ../iconeditor/iconeditor.h \
                iconeditorplugin.h
SOURCES       = ../iconeditor/iconeditor.cpp \
                iconeditorplugin.cpp
RESOURCES     = iconeditorplugin.qrc
DESTDIR       = $$[QT_INSTALL_PLUGINS]/designer
```




#### Double Buffering

Qt provides the QRubberBand class for drawing
rubber bands, but here we draw it ourselves to have finer control over the look, and to demonstrate double
buffering.


```cpp
#include <QMap>
#include <QPixmap>
#include <QVector>
#include <QWidget>

class QToolButton;
class PlotSettings;

class Plotter : public QWidget
{
    Q_OBJECT

public:
    Plotter(QWidget *parent = 0);

    void setPlotSettings(const PlotSettings &settings);
    void setCurveData(int id, const QVector<QPointF> &data);
    void clearCurve(int id);
    QSize minimumSizeHint() const;
    QSize sizeHint() const;

public slots:
    void zoomIn();
    void zoomOut();

// In the protected section of the class, we declare
// all the QWidget event handlers that we want to reimplement
protected:
    void paintEvent(QPaintEvent *event);
    void resizeEvent(QResizeEvent *event);
    void mousePressEvent(QMouseEvent *event);
    void mouseMoveEvent(QMouseEvent *event);
    void mouseReleaseEvent(QMouseEvent *event);
    void keyPressEvent(QKeyEvent *event);
    void wheelEvent(QWheelEvent *event);

private:
    void updateRubberBandRegion();
    void refreshPixmap();
    void drawGrid(QPainter *painter);
    void drawCurves(QPainter *painter);

    enum { Margin = 50 };

    QToolButton *zoomInButton;
    QToolButton *zoomOutButton;
    // store a curve's points as a QVector<QPointF>
    QMap<int, QVector<QPointF> > curveMap;
    QVector<PlotSettings> zoomStack;
    int curZoom;
    bool rubberBandIsShown;
    QRect rubberBandRect;

    // QPixmap. This variable holds a copy of the whole widget's rendering,
    // identical to what is shown on-screen. The plot is always drawn onto this
    // off-screen pixmap first; then the pixmap is copied onto the widget.
    QPixmap pixmap;
};


// specifies the range of the x- and y-axes and the number of ticks for these axes
class PlotSettings
{
public:
    PlotSettings();

    void scroll(int dx, int dy);
    void adjust();
    double spanX() const { return maxX - minX; }
    double spanY() const { return maxY - minY; }

    double minX;
    double maxX;
    double minY;
    double maxY;
    int numXTicks;
    int numYTicks;

private:
    static void adjustAxis(double &min, double &max, int &numTicks);
};
```

```cpp
Plotter::Plotter(QWidget *parent)
    : QWidget(parent)
{
    // tells QWidget to use the "dark" component of the palette as the color
    // for erasing the widget, instead of the "window" component
    // This gives Qt a default color that it can use to fill any newly revealed
    // pixels when the widget is resized to a larger size, before paintEvent()
    // even has the chance to paint the new pixels. We also need to call
    // setAutoFillBackground(true) to enable this mechanism. (By default, child
    // widgets inherit the background from their parent widget.)
    setBackgroundRole(QPalette::Dark);
    setAutoFillBackground(true);

    // default: QSizePolicy::Preferred in both directions
    setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);

    // accept focus by clicking or by pressing Tab. When the Plotter has focus,
    // it will receive events for key presses.
    setFocusPolicy(Qt::StrongFocus);
    rubberBandIsShown = false;

    zoomInButton = new QToolButton(this);
    zoomInButton->setIcon(QIcon(":/images/zoomin.png"));
    zoomInButton->adjustSize();
    connect(zoomInButton, SIGNAL(clicked()), this, SLOT(zoomIn()));

    zoomOutButton = new QToolButton(this);
    zoomOutButton->setIcon(QIcon(":/images/zoomout.png"));
    zoomOutButton->adjustSize();
    connect(zoomOutButton, SIGNAL(clicked()), this, SLOT(zoomOut()));

    setPlotSettings(PlotSettings());
}

void Plotter::zoomOut()
{
    if (curZoom > 0) {
        --curZoom;
        zoomOutButton->setEnabled(curZoom > 0);
        zoomInButton->setEnabled(true);
        zoomInButton->show();
        refreshPixmap();
    }
}

void Plotter::setCurveData(int id, const QVector<QPointF> &data)
{
    curveMap[id] = data;
    refreshPixmap();
}

void Plotter::clearCurve(int id);

void Plotter::paintEvent(QPaintEvent * /* event */)
{
    QStylePainter painter(this);
    painter.drawPixmap(0, 0, pixmap);

    if (rubberBandIsShown) {
        painter.setPen(palette().light().color());
        // QRect::normalized() ensures that the rubber band rectangle has
        // positive width and height. And adjusted() reduces the size of the
        // rectangle by one pixel to allow for its own 1-pixel-wide outline
        painter.drawRect(rubberBandRect.normalized()
                                       .adjusted(0, 0, -1, -1));
    }

    if (hasFocus()) {
        QStyleOptionFocusRect option;
        option.initFrom(this);
        option.backgroundColor = palette().dark().color();
        painter.drawPrimitive(QStyle::PE_FrameFocusRect, option);
    }
}

void Plotter::resizeEvent(QResizeEvent * /* event */)
{
    // reimplement resizeEvent() to place the Zoom In and Zoom Out buttons at
    // the top right of the Plotter widget, side by side, separated by a
    // 5-pixel gap and with a 5-pixel offset from the top and right edges of
    // the parent widget
    int x = width() - (zoomInButton->width()
                       + zoomOutButton->width() + 10);
    zoomInButton->move(x, 5);
    zoomOutButton->move(x + zoomInButton->width() + 5, 5);
    refreshPixmap();
}

void Plotter::mousePressEvent(QMouseEvent *event)
{
    QRect rect(Margin, Margin,
               width() - 2 * Margin, height() - 2 * Margin);

    if (event->button() == Qt::LeftButton) {
        if (rect.contains(event->pos())) {
            rubberBandIsShown = true;
            rubberBandRect.setTopLeft(event->pos());
            rubberBandRect.setBottomRight(event->pos());
            updateRubberBandRegion();
            // QWidget::setCursor() sets the cursor shape to use when the mouse
            // hovers over a particular widget. If no cursor is set for a
            // widget, the parent widget's cursor is used. The default for
            // top-level widgets is an arrow cursor.
            setCursor(Qt::CrossCursor);

            // QApplication::setOverrideCursor() with Qt::WaitCursor to change
            // the application's cursor to the standard wait cursor.
        }
    }
}

// consists of four calls to update() that schedule a paint event for the four
// small rectangular areas that are covered by the rubber band (two vertical
// and two horizontal lines).
void Plotter::updateRubberBandRegion()
{
    QRect rect = rubberBandRect.normalized();
    update(rect.left(), rect.top(), rect.width(), 1);
    update(rect.left(), rect.top(), 1, rect.height());
    update(rect.left(), rect.bottom(), rect.width(), 1);
    update(rect.right(), rect.top(), 1, rect.height());
}

void Plotter::mouseMoveEvent(QMouseEvent *event)
{
    if (rubberBandIsShown) {
        // erases the rubber band 
        updateRubberBandRegion();
        rubberBandRect.setBottomRight(event->pos());
        // redraws it at the new coordinates
        updateRubberBandRegion();
    }
}

void Plotter::mouseReleaseEvent(QMouseEvent *event)
{
    if ((event->button() == Qt::LeftButton) && rubberBandIsShown) {
        rubberBandIsShown = false;
        // erase the rubber band 
        updateRubberBandRegion();
        // restore the standard arrow cursor
        unsetCursor();

        // If the rubber band is at least 4 x 4, we perform the zoom. 
        // If the rubber band is smaller than that, it's likely that the user
        // clicked the widget by mistake or to give it focus, so we do nothing
        QRect rect = rubberBandRect.normalized();
        if (rect.width() < 4 || rect.height() < 4)
            return;
        rect.translate(-Margin, -Margin);

        PlotSettings prevSettings = zoomStack[curZoom];
        PlotSettings settings;
        double dx = prevSettings.spanX() / (width() - 2 * Margin);
        double dy = prevSettings.spanY() / (height() - 2 * Margin);
        settings.minX = prevSettings.minX + dx * rect.left();
        settings.maxX = prevSettings.minX + dx * rect.right();
        settings.minY = prevSettings.maxY - dy * rect.bottom();
        settings.maxY = prevSettings.maxY - dy * rect.top();
        settings.adjust();

        zoomStack.resize(curZoom + 1);
        zoomStack.append(settings);
        zoomIn();
    }
}

void Plotter::keyPressEvent(QKeyEvent *event)
{
    switch (event->key()) {
    case Qt::Key_Plus:
        zoomIn();
        break;
    case Qt::Key_Minus:
        zoomOut();
        break;
    case Qt::Key_Left:
        zoomStack[curZoom].scroll(-1, 0);
        refreshPixmap();
        break;
    case Qt::Key_Right:
        zoomStack[curZoom].scroll(+1, 0);
        refreshPixmap();
        break;
    case Qt::Key_Down:
        zoomStack[curZoom].scroll(0, -1);
        refreshPixmap();
        break;
    case Qt::Key_Up:
        zoomStack[curZoom].scroll(0, +1);
        refreshPixmap();
        break;
    default:
        QWidget::keyPressEvent(event);
    }
}
```

```cpp
void Plotter::keyPressEvent(QKeyEvent *event)
{
    // For simplicity, we ignore the Shift, Ctrl, and Alt modifier keys, which
    // are available through QKeyEvent::modifiers().
    switch (event->key()) {
    case Qt::Key_Plus:
        zoomIn();
        break;
    case Qt::Key_Minus:
        zoomOut();
        break;
    case Qt::Key_Left:
        zoomStack[curZoom].scroll(-1, 0);
        refreshPixmap();
        break;
    case Qt::Key_Right:
        zoomStack[curZoom].scroll(+1, 0);
        refreshPixmap();
        break;
    case Qt::Key_Down:
        zoomStack[curZoom].scroll(0, -1);
        refreshPixmap();
        break;
    case Qt::Key_Up:
        zoomStack[curZoom].scroll(0, +1);
        refreshPixmap();
        break;
    default:
        QWidget::keyPressEvent(event);
    }
}

void Plotter::wheelEvent(QWheelEvent *event)
{
    int numDegrees = event->delta() / 8;
    int numTicks = numDegrees / 15;

    // Most mice provide only a vertical wheel, but some also have a horizontal
    // wheel. Qt supports both kinds of wheel
    if (event->orientation() == Qt::Horizontal) {
        zoomStack[curZoom].scroll(numTicks, 0);
    } else {
        zoomStack[curZoom].scroll(0, numTicks);
    }

    // When we use QScrollArea (covered in Chapter 6) to provide scroll bars,
    // QScrollArea handles the mouse wheel events automatically, so we don't
    // need to reimplement wheelEvent() ourselves.

    refreshPixmap();
}


void Plotter::refreshPixmap()
{
    pixmap = QPixmap(size());
    pixmap.fill(this, 0, 0);

    QPainter painter(&pixmap);
    painter.initFrom(this);
    drawGrid(&painter);
    drawCurves(&painter);
    update();
}

// The drawGrid() function draws the grid behind the curves and the axes. The
// area on which we draw the grid is specified by rect. If the widget isn't
// large enough to accommodate the graph, we return immediately.
void Plotter::drawGrid(QPainter *painter)
{
    QRect rect(Margin, Margin,
               width() - 2 * Margin, height() - 2 * Margin);
    if (!rect.isValid())
        return;

    PlotSettings settings = zoomStack[curZoom];
    QPen quiteDark = palette().dark().color().light();
    QPen light = palette().light().color();

    for (int i = 0; i <= settings.numXTicks; ++i) {
        int x = rect.left() + (i * (rect.width() - 1)
                                 / settings.numXTicks);
        double label = settings.minX + (i * settings.spanX()
                                          / settings.numXTicks);
        painter->setPen(quiteDark);
        painter->drawLine(x, rect.top(), x, rect.bottom());
        painter->setPen(light);
        painter->drawLine(x, rect.bottom(), x, rect.bottom() + 5);
        // painter->drawText(x, y, width, height, alignment, text);
        // a more adaptable alternative would involve calculating the text's
        // bounding rectangle using QFontMetrics
        painter->drawText(x - 50, rect.bottom() + 5, 100, 20,
                          Qt::AlignHCenter | Qt::AlignTop,
                          QString::number(label));
    }
    for (int j = 0; j <= settings.numYTicks; ++j) {
        int y = rect.bottom() - (j * (rect.height() - 1)
                                   / settings.numYTicks);
        double label = settings.minY + (j * settings.spanY()
                                          / settings.numYTicks);
        painter->setPen(quiteDark);
        painter->drawLine(rect.left(), y, rect.right(), y);
        painter->setPen(light);
        painter->drawLine(rect.left() - 5, y, rect.left(), y);
        painter->drawText(rect.left() - Margin, y - 10, Margin - 5, 20,
                          Qt::AlignRight | Qt::AlignVCenter,
                          QString::number(label));
    }
    painter->drawRect(rect.adjusted(0, 0, -1, -1));
}

void Plotter::drawCurves(QPainter *painter)
{
    static const QColor colorForIds[6] = {
        Qt::red, Qt::green, Qt::blue, Qt::cyan, Qt::magenta, Qt::yellow
    };
    PlotSettings settings = zoomStack[curZoom];
    QRect rect(Margin, Margin,
               width() - 2 * Margin, height() - 2 * Margin);
    if (!rect.isValid())
        return;

    // set the QPainter's clip region to the rectangle that contains the curves
    // (excluding the margins and the frame around the graph)
    painter->setClipRect(rect.adjusted(+1, +1, -1, -1));

    QMapIterator<int, QVector<QPointF> > i(curveMap);
    while (i.hasNext()) {
        i.next();

        int id = i.key();
        QVector<QPointF> data = i.value();
        QPolygonF polyline(data.count());

        for (int j = 0; j < data.count(); ++j) {
            double dx = data[j].x() - settings.minX;
            double dy = data[j].y() - settings.minY;
            double x = rect.left() + (dx * (rect.width() - 1)
                                         / settings.spanX());
            double y = rect.bottom() - (dy * (rect.height() - 1)
                                           / settings.spanY());
            polyline[j] = QPointF(x, y);
        }

        // set the pen color for the curve
        painter->setPen(colorForIds[uint(id) % 6]);
        // draw a line that goes through all the curve's points
        painter->drawPolyline(polyline);
    }
}

```

Part II: Intermediate Qt
------------------------

### 6. Layout Management

#### Laying Out Widgets on a Form

```cpp
FindFileDialog::FindFileDialog(QWidget *parent)
    : QDialog(parent)
{
    ...
    setMinimumSize(265, 190);
    resize(365, 240);
}

void FindFileDialog::resizeEvent(QResizeEvent * /* event */)
{
    int extraWidth = width() - minimumWidth();
    int extraHeight = height() - minimumHeight();
    ...
}

QGridLayout *leftLayout = new QGridLayout;
leftLayout->addWidget(namedLabel, 0, 0);
leftLayout->addWidget(namedLineEdit, 0, 1);
leftLayout->addWidget(lookInLabel, 1, 0);
leftLayout->addWidget(lookInLineEdit, 1, 1);
leftLayout->addWidget(subfoldersCheckBox, 2, 0, 1, 2); // span two columns
leftLayout->addWidget(tableWidget, 3, 0, 1, 2);
leftLayout->addWidget(messageLabel, 4, 0, 1, 2);

QVBoxLayout *rightLayout = new QVBoxLayout;
rightLayout->addWidget(findButton);
rightLayout->addWidget(stopButton);
rightLayout->addWidget(closeButton);
// Stretch. In Qt Designer, we can achieve the same effect by inserting a spacer
rightLayout->addStretch(); 
rightLayout->addWidget(helpButton);

QHBoxLayout *mainLayout = new QHBoxLayout;
mainLayout->addLayout(leftLayout);
mainLayout->addLayout(rightLayout);
setLayout(mainLayout);
```

QLayout::setContentsMargins() and QLayout::setSpacing()
gridlayout->addWidget(widget, row, column, rowSpan, columnSpan);

QSizePolicy, sizeHint(), minimumSizeHint()

#. Fixed
#. Minimum
#. Maximum
#. Prefered
#. Expanding

![][size-policy]

In addition to the size policy's horizontal and vertical components, the QSizePolicy class stores a horizontal
and a vertical stretch factor. 

#### Stacked Layouts

For convenience, Qt also includes QStackedWidget, which provides a QWidget
with a built-in QStackedLayout.

setCurrentIndex(), 
The page number for a child widget is available using indexOf()

![][stacked-widgets]

#. QListWidget and a QStackedWidget to the form.
#. Connect the list widget's currentRowChanged(int) signal to the stacked widget's setCurrentIndex(int) slot.
#. list widget's currentRow property to 0.

For cases where the number of pages is small and likely to remain small, a simpler alternative to using a
QStackedWidget and QListWidget is to use a QTabWidget.

#### Splitters

![][splitter]

```cpp
#include <QtGui>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QTextEdit *editor1 = new QTextEdit;
    QTextEdit *editor2 = new QTextEdit;
    QTextEdit *editor3 = new QTextEdit;

    QSplitter splitter(Qt::Horizontal);
    splitter.addWidget(editor1);
    splitter.addWidget(editor2);
    splitter.addWidget(editor3);

    editor1->setPlainText("...");
    editor2->setPlainText("...");
    editor3->setPlainText("...");

    splitter.setWindowTitle(QObject::tr("Splitter"));
    splitter.show();

    return app.exec();
}
```

```cpp
mainSplitter = new QSplitter(Qt::Horizontal);
mainSplitter->addWidget(foldersTreeWidget);
mainSplitter->addWidget(rightSplitter);
mainSplitter->setStretchFactor(1, 1); // factor!
setCentralWidget(mainSplitter);

// write settings
void MailClient::writeSettings()
{
    QSettings settings("Software Inc.", "Mail Client");

    settings.beginGroup("mainWindow");
    settings.setValue("geometry", saveGeometry());
    settings.setValue("mainSplitter", mainSplitter->saveState());
    settings.setValue("rightSplitter", rightSplitter->saveState());
    settings.endGroup();
}

// readSettings
void MailClient::readSettings()
{
    QSettings settings("Software Inc.", "Mail Client");

    settings.beginGroup("mainWindow");
    restoreGeometry(settings.value("geometry").toByteArray());
    mainSplitter->restoreState(
            settings.value("mainSplitter").toByteArray());
    rightSplitter->restoreState(
            settings.value("rightSplitter").toByteArray());
    settings.endGroup();
}
```

#### Scrolling Areas

```cpp
IconEditor *iconEditor = new IconEditor;
iconEditor->setIconImage(QImage(":/images/mouse.png"));

QScrollArea scrollArea;
scrollArea.setWidget(iconEditor);
scrollArea.viewport()->setBackgroundRole(QPalette::Dark);
scrollArea.viewport()->setAutoFillBackground(true);
scrollArea.setWindowTitle(QObject::tr("Icon Editor"));
scrollArea.show();
```

By calling setWidgetResizable(true), we can tell QScrollArea to
automatically resize the widget to take advantage of any extra space beyond its size hint.

![][scroll-area]

```cpp
scrollArea.setHorizontalScrollBarPolicy(Qt::ScrollBarAlwaysOn);
scrollArea.setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOn);
```

#### Dock Windows and Toolbars

```cpp
QDockWidget::setFeatures();
```

![][dockarea]

The corners indicated with dotted lines can belong to either of their two adjoining dock areas. For example, we
could make the top-left corner belong to the left dock area by calling
QMainWindow::setCorner(Qt::TopLeftCorner,  Qt::LeftDockWidgetArea).


DockArea

```cpp
QDockWidget *shapesDockWidget = new QDockWidget(tr("Shapes"));
shapesDockWidget->setObjectName("shapesDockWidget");
shapesDockWidget->setWidget(treeWidget);
// setAllowedAreas() call specifies constraints on which dock areas can accept
// the dock window
shapesDockWidget->setAllowedAreas(Qt::LeftDockWidgetArea
                                     | Qt::RightDockWidgetArea);
addDockWidget(Qt::RightDockWidgetArea, shapesDockWidget);
```

Normally we do not bother to give widgets object names, but when we create dock windows and
toolbars, doing so is necessary if we want to use QMainWindow::saveState() and
QMainWindow::restoreState() to save and restore the dock window and toolbar geometries and states.

ToolBar

```cpp
QToolBar *fontToolBar = new QToolBar(tr("Font"));

fontToolBar->setObjectName("fontToolBar");
fontToolBar->addWidget(familyComboBox);
fontToolBar->addWidget(sizeSpinBox);
fontToolBar->addAction(boldAction);
fontToolBar->addAction(italicAction);
fontToolBar->addAction(underlineAction);

fontToolBar->setAllowedAreas(Qt::TopToolBarArea
                                | Qt::BottomToolBarArea);
addToolBar(fontToolBar);
```

QMainWindow's saveState() and restoreState()

settings.setValue("geometry", saveGeometry());
settings.setValue("state", saveState());

restoreGeometry(settings.value("geometry").toByteArray());
restoreState(settings.value("state").toByteArray());


Finally, QMainWindow provides a context menu that lists all the dock windows and toolbars. This menu is shown
in Figure 6.15. The user can close and restore dock windows and hide and restore toolbars using this menu.?? where?

#### Multiple Document Interface

QMdiArea

![][mdi]

```cpp
MainWindow::MainWindow()
{
    mdiArea = new QMdiArea;
    setCentralWidget(mdiArea);
    connect(mdiArea, SIGNAL(subWindowActivated(QMdiSubWindow*)),
            this, SLOT(updateActions()));

    createActions();
    createMenus();
    createToolBars();
    createStatusBar();

    setWindowIcon(QPixmap(":/images/icon.png"));
    setWindowTitle(tr("MDI Editor"));
    // Such timers time out as soon as the event loop is idle. In practice,
    // this means that the constructor will finish, and then after the main
    // window has been shown, loadFiles() will be called
    QTimer::singleShot(0, this, SLOT(loadFiles()));
}
```

```cpp
void MainWindow::loadFiles()
{
    QStringList args = QApplication::arguments();
    args.removeFirst();
    if (!args.isEmpty()) {
        foreach (QString arg, args)
            openFile(arg);
        mdiArea->cascadeSubWindows();
    } else {
        newFile();
    }
    mdiArea->activateNextSubWindow();
}
```

Qt-specific command-line options, such as -style and -font, are automatically
removed from the argument list by the QApplication constructor. So, if we write
mdieditor -style motif readme.txt on the command line,
QApplication::arguments() returns a QStringList containing two items
("mdieditor" and "readme.txt"), and the MDI Editor application starts up with
the document readme.txt.  

```cpp
void MainWindow::newFile()
{
    Editor *editor = new Editor;
    editor->newFile();
    addEditor(editor);
}
```

```cpp
void createActions();
void createMenus();
void createToolBars();
void createStatusBar();
```

```cpp
void MainWindow::cut()
{
    if (activeEditor())
        activeEditor()->cut();
}
```

```cpp
QSize Editor::sizeHint() const
{
    return QSize(72 * fontMetrics().width('x'),
                 25 * fontMetrics().lineSpacing());
}
```

```cpp
void Editor::newFile()
{
    static int documentNumber = 1;

    curFile = tr("document%1.txt").arg(documentNumber);
    setWindowTitle(curFile + "[*]");
    action->setText(curFile);
    isUntitled = true;
    ++documentNumber;
}
```


QRC

```xml
<RCC>
<qresource>
    <file>images/copy.png</file>
    <file>images/cut.png</file>
    <file>images/document.png</file>
    <file>images/icon.png</file>
    <file>images/new.png</file>
    <file>images/open.png</file>
    <file>images/paste.png</file>
    <file>images/save.png</file>
</qresource>
</RCC>
```

```cpp
QGridLayout *mainLayout = new QGridLayout;
mainLayout->setColumnStretch(0, 1);
mainLayout->setColumnStretch(1, 3);
mainLayout->addWidget(listWidget, 0, 0);
mainLayout->addLayout(stackedLayout, 0, 1);
mainLayout->addWidget(buttonBox, 1, 0, 1, 2);
setLayout(mainLayout);
```

### 7. Event Processing

#### Reimplementing Event Handlers

QEvent::type() returns QEvent::MouseButtonPress

Events are notified to objects through their event() function, inherited from QObject. The event()
implementation in QWidget forwards the most common types of events to specific event handlers, such as
mousePressEvent(), keyPressEvent(), and paintEvent().

```cpp
void CodeEditor::keyPressEvent(QKeyEvent *event)
{
    switch (event->key()) {
    case Qt::Key_Home:
        if (event->modifiers() & Qt::ControlModifier) {
            goToBeginningOfDocument();
        } else {
            goToBeginningOfLine();
        }
        break;
    case Qt::Key_End:
        ...
    default:
        QWidget::keyPressEvent(event);
    }
}
```

The Tab and Backtab (Shift+Tab) keys are special cases. QWidget::event()
handles them before it calls keyPressEvent(), with the semantic of passing the
focus to the next or previous widget in the focus chain.  This behavior is
usually what we want, but in a CodeEditor widget, we might prefer to make Tab
indent a line.  The event() reimplementation would then look like this:

```cpp
bool CodeEditor::event(QEvent *event)
{
    if (event->type() == QEvent::KeyPress) {
        QKeyEvent *keyEvent = static_cast<QKeyEvent *>(event);
        if (keyEvent->key() == Qt::Key_Tab) {
            insertAtCurrentPosition('\t');
            return true;
        }
    }
    return QWidget::event(event);
}
```

QAction::setShortcutContext() or
QShortcut::setContext()

```cpp
// ticker.h
#include <QWidget>

class Ticker : public QWidget
{
    Q_OBJECT
    Q_PROPERTY(QString text READ text WRITE setText)

public:
    Ticker(QWidget *parent = 0);

    void setText(const QString &newText);
    QString text() const { return myText; }
    QSize sizeHint() const;

protected:
    void paintEvent(QPaintEvent *event);

    void timerEvent(QTimerEvent *event);
    void showEvent(QShowEvent *event);
    void hideEvent(QHideEvent *event);

private:
    QString myText;
    int offset;
    int myTimerId;
};

// ticker.cpp
void Ticker::setText(const QString &newText)
{
    myText = newText;
    update();               // repaint
    updateGeometry();       // sizeHint()
}

QSize Ticker::sizeHint() const
{
    // QWidget::fontMetrics() returns a QFontMetrics object that can be queried
    // to obtain information relating to the widget's font.
    return fontMetrics().size(0, text()); // 
}

void Ticker::paintEvent(QPaintEvent * /* event */)
{
    QPainter painter(this);

    // QWidget::fontMetrics() returns a QFontMetrics object that can be queried
    // to obtain information relating to the widget's font.
    int textWidth = fontMetrics().width(text());
    if (textWidth < 1)
        return;
    int x = -offset;
    while (x < width()) {
        painter.drawText(x, 0, textWidth, height(), // 这是 QWidget::height()
                         Qt::AlignLeft | Qt::AlignVCenter, text());
        x += textWidth;
    }
}

void Ticker::showEvent(QShowEvent * /* event */)
{
    // The call to QObject::startTimer() returns an ID number, which we can use
    // later to identify the timer. QObject supports multiple independent
    // timers, each with its own time interval.
    myTimerId = startTimer(30);
}
```


#### Installing Event Filters




#### Staying Responsive during Intensive Processing

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


    
[set-layout-png]:
[chape-chaning-dlg]:
[layout-three-parts]:
[connecting]
[connecting2]
[mainwindow]
[menu]
![][context-menu]
![][toolbar]
![][status-bar]
![][qmessagebox-style]
![][dialog]
![][multi-document]
![][table-widget]
![][size-policy]
![][stacked-widgets]
![][splitter]
![][mdi]
