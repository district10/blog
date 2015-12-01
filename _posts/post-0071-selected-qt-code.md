% Selected Qt Code
% TANG ZhiXiong
% 2015-11-28

Selected Qt Code
================

```cpp
setFlags(ItemIsSelectable | ItemIsMovable);
setAcceptsHoverEvents(true);

penStyleComboBox = new QComboBox;
// inline void QComboBox::addItem(const QString &atext, const QVariant &auserData) { insertItem(count(), atext, auserData); }
penStyleComboBox->addItem(tr("Solid"), Qt::SolidLine);
penStyleComboBox->addItem(tr("Dash"), Qt::DashLine);
penStyleComboBox->addItem(tr("Dot"), Qt::DotLine);
penStyleComboBox->addItem(tr("Dash Dot"), Qt::DashDotLine);
penStyleComboBox->addItem(tr("Dash Dot Dot"), Qt::DashDotDotLine);
penStyleComboBox->addItem(tr("None"), Qt::NoPen);

penStyleLabel = new QLabel(tr("&Pen Style:"));
penStyleLabel->setBuddy(penStyleComboBox);

connect(shapeComboBox, SIGNAL(activated(int)),
        this, SLOT(shapeChanged()));
connect(penWidthSpinBox, SIGNAL(valueChanged(int)),
        this, SLOT(penChanged()));
connect(penStyleComboBox, SIGNAL(activated(int)),
        this, SLOT(penChanged()));
connect(penCapComboBox, SIGNAL(activated(int)),
        this, SLOT(penChanged()));
connect(penJoinComboBox, SIGNAL(activated(int)),
        this, SLOT(penChanged()));

void Window::penChanged()
{
    int width = penWidthSpinBox->value();
    // const int IdRole = Qt::UserRole;
    Qt::PenStyle style = Qt::PenStyle(penStyleComboBox->itemData(
            penStyleComboBox->currentIndex(), IdRole).toInt());
    Qt::PenCapStyle cap = Qt::PenCapStyle(penCapComboBox->itemData(
            penCapComboBox->currentIndex(), IdRole).toInt());
    Qt::PenJoinStyle join = Qt::PenJoinStyle(penJoinComboBox->itemData(
            penJoinComboBox->currentIndex(), IdRole).toInt());

    renderArea->setPen(QPen(Qt::blue, width, style, cap, join));
}

renderArea->setBrush(QBrush(QPixmap(":/images/brick.png")));
```

```cpp
void setBackgroundRole(QPalette::ColorRole);
QPalette::ColorRole backgroundRole() const;

void RenderArea::paintEvent(QPaintEvent * /* event */)
{
    static const QPoint points[4] = {
        QPoint(10, 80),
        QPoint(20, 10),
        QPoint(80, 30),
        QPoint(90, 70)
    };

    QRect rect(10, 20, 80, 60);

    QPainterPath path;
    path.moveTo(20, 80);
    path.lineTo(20, 30);
    path.cubicTo(80, 0, 50, 50, 80, 80);

    int startAngle = 20 * 16;
    int arcLength = 120 * 16;
//! [8]

//! [9]
    QPainter painter(this);
    painter.setPen(pen);
    painter.setBrush(brush);
    if (antialiased)
        painter.setRenderHint(QPainter::Antialiasing, true);
//! [9]

//! [10]
    for (int x = 0; x < width(); x += 100) {
        for (int y = 0; y < height(); y += 100) {
            painter.save();
            painter.translate(x, y);
//! [10] //! [11]
            if (transformed) {
                painter.translate(50, 50);
                painter.rotate(60.0);
                painter.scale(0.6, 0.9);
                painter.translate(-50, -50);
            }
//! [11]

//! [12]
            switch (shape) {
            case Line:
                painter.drawLine(rect.bottomLeft(), rect.topRight());
                break;
            case Points:
                painter.drawPoints(points, 4);
                break;
            case Polyline:
                painter.drawPolyline(points, 4);
                break;
            case Polygon:
                painter.drawPolygon(points, 4);
                break;
            case Rect:
                painter.drawRect(rect);
                break;
            case RoundedRect:
                painter.drawRoundedRect(rect, 25, 25, Qt::RelativeSize);
                break;
            case Ellipse:
                painter.drawEllipse(rect);
                break;
            case Arc:
                painter.drawArc(rect, startAngle, arcLength);
                break;
            case Chord:
                painter.drawChord(rect, startAngle, arcLength);
                break;
            case Pie:
                painter.drawPie(rect, startAngle, arcLength);
                break;
            case Path:
                painter.drawPath(path);
                break;
            case Text:
                painter.drawText(rect, Qt::AlignCenter, tr("Qt by\nDigia"));
                break;
            case Pixmap:
                painter.drawPixmap(10, 10, pixmap);
            }
//! [12] //! [13]
            painter.restore();
        }
    }

    painter.setRenderHint(QPainter::Antialiasing, false);
    painter.setPen(palette().dark().color());
    painter.setBrush(Qt::NoBrush);
    painter.drawRect(QRect(0, 0, width() - 1, height() - 1));
}
//! [13]

    mainLayout->setColumnStretch(0, 1);
    mainLayout->setColumnStretch(3, 1);
    mainLayout->addWidget(renderArea, 0, 0, 1, 4);
    mainLayout->addWidget(shapeLabel, 2, 0, Qt::AlignRight);
    mainLayout->addWidget(shapeComboBox, 2, 1);
    mainLayout->addWidget(penWidthLabel, 3, 0, Qt::AlignRight);
    mainLayout->addWidget(penWidthSpinBox, 3, 1);
    mainLayout->addWidget(penStyleLabel, 4, 0, Qt::AlignRight);
    mainLayout->addWidget(penStyleComboBox, 4, 1);
    mainLayout->addWidget(penCapLabel, 3, 2, Qt::AlignRight);
    mainLayout->addWidget(penCapComboBox, 3, 3);
    mainLayout->addWidget(penJoinLabel, 2, 2, Qt::AlignRight);
    mainLayout->addWidget(penJoinComboBox, 2, 3);
    mainLayout->addWidget(brushStyleLabel, 4, 2, Qt::AlignRight);
    mainLayout->addWidget(brushStyleComboBox, 4, 3);
    mainLayout->addWidget(otherOptionsLabel, 5, 0, Qt::AlignRight);
    mainLayout->addWidget(antialiasingCheckBox, 5, 1, 1, 1, Qt::AlignRight);
    mainLayout->addWidget(transformationsCheckBox, 5, 2, 1, 2, Qt::AlignRight);
    setLayout(mainLayout);
```

```cpp
void Window::createCurveIcons()
{
    QPixmap pix(m_iconSize);
    QPainter painter(&pix);
    QLinearGradient gradient(0,0, 0, m_iconSize.height());
    gradient.setColorAt(0.0, QColor(240, 240, 240));
    gradient.setColorAt(1.0, QColor(224, 224, 224));
    QBrush brush(gradient);
    const QMetaObject &mo = QEasingCurve::staticMetaObject;
    QMetaEnum metaEnum = mo.enumerator(mo.indexOfEnumerator("Type"));
    // Skip QEasingCurve::Custom
    for (int i = 0; i < QEasingCurve::NCurveTypes - 1; ++i) {
        painter.fillRect(QRect(QPoint(0, 0), m_iconSize), brush);
        QEasingCurve curve((QEasingCurve::Type)i);
        painter.setPen(QColor(0, 0, 255, 64));
        qreal xAxis = m_iconSize.height()/1.5;
        qreal yAxis = m_iconSize.width()/3;
        painter.drawLine(0, xAxis, m_iconSize.width(),  xAxis);
        painter.drawLine(yAxis, 0, yAxis, m_iconSize.height());

        qreal curveScale = m_iconSize.height()/2;

        painter.setPen(Qt::NoPen);

        // start point
        painter.setBrush(Qt::red);
        QPoint start(yAxis, xAxis - curveScale * curve.valueForProgress(0));
        painter.drawRect(start.x() - 1, start.y() - 1, 3, 3);

        // end point
        painter.setBrush(Qt::blue);
        QPoint end(yAxis + curveScale, xAxis - curveScale * curve.valueForProgress(1));
        painter.drawRect(end.x() - 1, end.y() - 1, 3, 3);

        QPainterPath curvePath;
        curvePath.moveTo(start);
        for (qreal t = 0; t <= 1.0; t+=1.0/curveScale) {
            QPoint to;
            to.setX(yAxis + curveScale * t);
            to.setY(xAxis - curveScale * curve.valueForProgress(t));
            curvePath.lineTo(to);
        }
        painter.setRenderHint(QPainter::Antialiasing, true);
        painter.strokePath(curvePath, QColor(32, 32, 32));
        painter.setRenderHint(QPainter::Antialiasing, false);
        QListWidgetItem *item = new QListWidgetItem;
        item->setIcon(QIcon(pix));
        item->setText(metaEnum.key(i));
        m_ui.easingCurvePicker->addItem(item);
    }
}

void Window::startAnimation()
{
    m_anim->setStartValue(QPointF(0, 0));
    m_anim->setEndValue(QPointF(100, 100));
    m_anim->setDuration(2000);
    m_anim->setLoopCount(-1); // forever
    m_anim->start();
}

#ifndef ANIMATION_H
#define ANIMATION_H

#include <QtGui>

#include <QtCore/qpropertyanimation.h>

class Animation : public QPropertyAnimation {
public:
    enum PathType {
        LinearPath,
        CirclePath,
        NPathTypes
    };
    Animation(QObject *target, const QByteArray &prop)
        : QPropertyAnimation(target, prop)
    {
        setPathType(LinearPath);
    }

    void setPathType(PathType pathType)
    {
        if (pathType >= NPathTypes)
            qWarning("Unknown pathType %d", pathType);

        m_pathType = pathType;
        m_path = QPainterPath();
    }

    void updateCurrentTime(int currentTime)
    {
        if (m_pathType == CirclePath) {
            if (m_path.isEmpty()) {
                QPointF to = endValue().toPointF();
                QPointF from = startValue().toPointF();
                m_path.moveTo(from);
                m_path.addEllipse(QRectF(from, to));
            }
            int dura = duration();
            const qreal progress = ((dura == 0) ? 1 : ((((currentTime - 1) % dura) + 1) / qreal(dura)));

            qreal easedProgress = easingCurve().valueForProgress(progress);
            if (easedProgress > 1.0) {
                easedProgress -= 1.0;
            } else if (easedProgress < 0) {
                easedProgress += 1.0;
            }
            QPointF pt = m_path.pointAtPercent(easedProgress);
            updateCurrentValue(pt);
            emit valueChanged(pt);
        } else {
            QPropertyAnimation::updateCurrentTime(currentTime);
        }
    }

    QPainterPath m_path;
    PathType m_pathType;
};
```

```cpp
QFontMetrics metric(font());
QSize size = metric.size(Qt::TextSingleLine, text);
setPixmap(QPixmap::fromImage(image));

int y = 5;

    while (!inputStream.atEnd()) {
        QString word;
        word = inputStream.readLine();
        if (!word.isEmpty()) {
            DragLabel *wordLabel = new DragLabel(word, this);
            wordLabel->move(x, y);
            wordLabel->show();
            wordLabel->setAttribute(Qt::WA_DeleteOnClose);
            x += wordLabel->width() + 2;
#if defined(Q_WS_MAEMO_5) || defined(Q_WS_SIMULATOR)
            if (x >= 345) {
#else
            if (x >= 245) {
#endif
                x = 5;
                y += wordLabel->height() + 2;
            }
        }
    }
//! [1]


void DragWidget::mousePressEvent(QMouseEvent *event)
{
//! [13]
//! [14]
    DragLabel *child = static_cast<DragLabel*>(childAt(event->pos()));
    if (!child)
        return;

    QPoint hotSpot = event->pos() - child->pos();

    QByteArray itemData;
    QDataStream dataStream(&itemData, QIODevice::WriteOnly);
    dataStream << child->labelText() << QPoint(hotSpot);
//! [14]

//! [15]
    QMimeData *mimeData = new QMimeData;
    mimeData->setData("application/x-fridgemagnet", itemData);
    mimeData->setText(child->labelText());
//! [15]

//! [16]
    QDrag *drag = new QDrag(this);
    drag->setMimeData(mimeData);
    drag->setPixmap(*child->pixmap());
    drag->setHotSpot(hotSpot);

    child->hide();
//! [16]

//! [17]
    if (drag->exec(Qt::MoveAction | Qt::CopyAction, Qt::CopyAction) == Qt::MoveAction)
        child->close();
    else
        child->show();
}
//! [17]

void DragWidget::dragMoveEvent(QDragMoveEvent *event)
{
    if (event->mimeData()->hasFormat("application/x-fridgemagnet")) {
        if (children().contains(event->source())) {
            event->setDropAction(Qt::MoveAction);
            event->accept();
        } else {
            event->acceptProposedAction();
        }
    } else if (event->mimeData()->hasText()) {
        event->acceptProposedAction();
    } else {
        event->ignore();
    }
}
```

```cpp
(QGraphicsView)
    FadeMessage widget;
    widget.setWindowTitle(QT_TRANSLATE_NOOP(QGraphicsView, "Popup Message with Effect"));
#if defined(Q_WS_S60) || defined(Q_WS_MAEMO_5)
    widget.showMaximized();
#else
    widget.setFixedSize(400, 600);
    widget.show();

    m_animation = new QPropertyAnimation(m_effect, "strength", this);
    m_animation->setDuration(500);
    m_animation->setEasingCurve(QEasingCurve::InOutSine);
    m_animation->setStartValue(0);
    m_animation->setEndValue(1);
     
     // QGraphicsPixmapItem class provides a pixmap item that you can add to a QGraphicsScene. More...
    QGraphicsPixmapItem *bg = m_scene.addPixmap(QPixmap(":/background.jpg"));
    bg->setParentItem(parent);
    bg->setZValue(-1);

    
    QGraphicsRectItem *block = m_scene.addRect(50, 300, sceneTextWidth, fh + 3);

       QGraphicsTextItem *text = m_scene.addText(sceneText, font);
    text->setDefaultTextColor(Qt::white);
    text->setPos(50, 300);
    block->setZValue(2);
    block->hide();

    text->setParentItem(block);

        m_effect = new QGraphicsColorizeEffect;
    m_effect->setColor(QColor(122, 193, 66));
    m_effect->setStrength(0);
    m_effect->setEnabled(true);
    parent->setGraphicsEffect(m_effect);

    QPushButton *press = new QPushButton;
    press->setText(tr("Press me"));
    connect(press, SIGNAL(clicked()), SLOT(togglePopup()));
    m_scene.addWidget(press);

    // -------------
    void ImageViewer::fitToWindow()
//! [13] //! [14]
{
    bool fitToWindow = fitToWindowAct->isChecked();
    scrollArea->setWidgetResizable(fitToWindow);
    if (!fitToWindow) {
        normalSize();
    }
    updateActions();
}
//! [14]

Q_ASSERT(imageLabel->pixmap());
scaleFactor *= factor;
imageLabel->resize(scaleFactor * imageLabel->pixmap()->size());

adjustScrollBar(scrollArea->horizontalScrollBar(), factor);
adjustScrollBar(scrollArea->verticalScrollBar(), factor);

zoomInAct->setEnabled(scaleFactor < 3.0);
zoomOutAct->setEnabled(scaleFactor > 0.333);

scene.setStickyFocus(true); // bg to clear foucus

scene.setSceneRect(scene.itemsBoundingRect());

QGraphicsView view(&scene);
view.scale(0.5, 0.5);
view.setRenderHints(view.renderHints() | QPainter::Antialiasing | QPainter::SmoothPixmapTransform);
view.setBackgroundBrush(QPixmap(":/No-Ones-Laughing-3.jpg"));
view.setViewportUpdateMode(QGraphicsView::BoundingRectViewportUpdate);
view.show();


void CustomProxy::updateStep(qreal step)
{
    QRectF r = boundingRect();
    setTransform(QTransform()
                 .translate(r.width() / 2, r.height() / 2)
                 .rotate(step * 30, Qt::XAxis)
                 .rotate(step * 10, Qt::YAxis)
                 .rotate(step * 5, Qt::ZAxis)
                 .scale(1 + 1.5 * step, 1 + 1.5 * step)
                 .translate(-r.width() / 2, -r.height() / 2));
}

void GraphWidget::shuffle()
{
    foreach (QGraphicsItem *item, scene()->items()) {
        if (qgraphicsitem_cast<Node *>(item))
            item->setPos(-150 + qrand() % 300, -150 + qrand() % 300);
    }
}

//! [11]
QVariant Node::itemChange(GraphicsItemChange change, const QVariant &value)
{
    switch (change) {
    case ItemPositionHasChanged:
        foreach (Edge *edge, edgeList)
            edge->adjust();
        graph->itemMoved();
        break;
    default:
        break;
    };

    return QGraphicsItem::itemChange(change, value);
}
//! [11]

if (qFuzzyCompare(line.length(), qreal(0.)))
    return;

qsrand(QTime(0,0,0).secsTo(QTime::currentTime()));
```

```cpp
saveAsMenu = new QMenu(tr("&Save As"), this);
foreach (QAction *action, saveAsActs)
    saveAsMenu->addAction(action);

fileMenu = new QMenu(tr("&File"), this);
fileMenu->addAction(openAct);
fileMenu->addMenu(saveAsMenu);
fileMenu->addAction(printAct);
fileMenu->addSeparator();
fileMenu->addAction(exitAct);

void MainWindow::closeEvent(QCloseEvent *event)
//! [1] //! [2]
{
    if (maybeSave()) {
        event->accept();
    } else {
        event->ignore();
    }
}

bool MainWindow::maybeSave()
//! [17] //! [18]
{
    if (scribbleArea->isModified()) {
       QMessageBox::StandardButton ret;
       ret = QMessageBox::warning(this, tr("Scribble"),
                          tr("The image has been modified.\n"
                             "Do you want to save your changes?"),
                          QMessageBox::Save | QMessageBox::Discard
			  | QMessageBox::Cancel);
        if (ret == QMessageBox::Save) {
            return saveFile("png");
        } else if (ret == QMessageBox::Cancel) {
            return false;
        }
    }
    return true;
}

foreach (QByteArray format, QImageWriter::supportedImageFormats()) {
    QString text = tr("%1...").arg(QString(format).toUpper());

    QAction *action = new QAction(text, this);
    action->setData(format);
    connect(action, SIGNAL(triggered()), this, SLOT(save()));
    saveAsActs.append(action);
}

void MainWindow::save()
//! [5] //! [6]
{
    QAction *action = qobject_cast<QAction *>(sender());
    QByteArray fileFormat = action->data().toByteArray();
    saveFile(fileFormat);
}
```

```cpp
void AddressBook::next()
{
    QString name = nameLine->text();
    QMap<QString, QString>::iterator i = contacts.find(name);

    if (i != contacts.end())
        i++;

    if (i == contacts.end())
        i = contacts.begin();

    nameLine->setText(i.key());
    addressText->setText(i.value());
}

void AddressBook::previous()
{
    QString name = nameLine->text();
    QMap<QString, QString>::iterator i = contacts.find(name);

    if (i == contacts.end()){
        nameLine->clear();
        addressText->clear();
        return;
    }

    if (i == contacts.begin())
        i = contacts.end();

    i--;
    nameLine->setText(i.key());
    addressText->setText(i.value());
}
//! [previous() function]

void RenderArea::transformPainter(QPainter &painter)
{
    for (int i = 0; i < operations.size(); ++i) {
        switch (operations[i]) {
        case Translate:
            painter.translate(50, 50);
            break;
        case Scale:
            painter.scale(0.75, 0.75);
            break;
        case Rotate:
            painter.rotate(60);
            break;
        case NoTransformation:
        default:
            ;
        }
    }
}
```

```
setMouseTracking(true);
// To be able to show the appropiate tooltips while the user is moving the
// cursor around, we need to enable mouse tracking for the widget.  If mouse
// tracking is disabled (the default), the widget only receives mouse move
// events when at least one mouse button is pressed while the mouse is being
// moved. If mouse tracking is enabled, the widget receives mouse move events
// even if no buttons are pressed.  
// QWidget::event() is the main event handler and receives all the widget's
// events. Normally, we recommend reimplementing one of the specialized event
// handlers instead of this function. But here we want to catch the
// QEvent::ToolTip events, and since these are rather rare, there exists no
// specific event handler. For that reason we reimplement the main event
// handler, and the first thing we need to do is to determine the event's type:

bool SortingBox::event(QEvent *event)
{
//! [5] //! [6]
    // If the type is QEvent::ToolTip, we cast the event to a QHelpEvent,
    // otherwise we propagate the event using the QWidget::event() function.
    if (event->type() == QEvent::ToolTip) {
        QHelpEvent *helpEvent = static_cast<QHelpEvent *>(event);
        int index = itemAt(helpEvent->pos());
        if (index != -1) {
            // Note that the QToolTip::showText() function needs the event's
            // position in global coordinates provided by
            // QHelpEvent::globalPos().
            QToolTip::showText(helpEvent->globalPos(), shapeItems[index].toolTip());
        } else {
            QToolTip::hideText();
            event->ignore();
        }
        static int i = 0;

        return true;
    }
    return QWidget::event(event);
}


newCircleButton = createToolButton(tr("New Circle"),
                                   QIcon(":/images/circle.png"),
                                   SLOT(createNewCircle()));

QToolButton *SortingBox::createToolButton(const QString &toolTip,
                                          const QIcon &icon, const char *member)
{
    QToolButton *button = new QToolButton(this);
    button->setToolTip(toolTip);
    button->setIcon(icon);
    button->setIconSize(QSize(32, 32));
    connect(button, SIGNAL(clicked()), this, member);

    return button;
}                                     

void SortingBox::moveItemTo(const QPoint &pos)
{
    QPoint offset = pos - previousPosition;
    itemInMotion->setPosition(itemInMotion->position() + offset);
//! [18] //! [19]
    previousPosition = pos;
    update();
}

int SortingBox::updateButtonGeometry(QToolButton *button, int x, int y)
{
    QSize size = button->sizeHint();
    //                           ref width
    button->setGeometry(x - size.rwidth(), y - size.rheight(),
                        size.rwidth(), size.rheight());

    //  QStyle::pixelMetric() to determine the widget's preferred default spacing between its child widgets
    return y - size.rheight()
           - style()->pixelMetric(QStyle::PM_DefaultLayoutSpacing);
}
//! [20]

qreal adjust = 0.5;
return QRectF(-18 - adjust, -22 - adjust,
              36 + adjust, 60 + adjust);
```

```cmake
FILE(GLOB_RECURSE HDRS_FILES *.h *.hpp)
FILE(GLOB_RECURSE SRCS_FILES *.cpp *.c *.cxx)
FILE(GLOB_RECURSE UI_FILES *.ui)
FILE(GLOB CD_FILES *.cd)
FILE(GLOB_RECURSE RSCS *.qrc)

QT4_WRAP_CPP(MOC_SRCS ${HDRS_FILES})
QT4_ADD_RESOURCES(RSC_SRCS ${RSCS})
QT4_WRAP_UI(UI_HDRS ${UI_FILES})

SET(FILES_TO_TRANSLATE ${FILES_TO_TRANSLATE} ${SRCS_FILES} ${UI_FILES} ${HDRS_FILES} PARENT_SCOPE)

SOURCE_GROUP("UI Files" FILES ${UI_FILES})
SOURCE_GROUP("Generated Files" FILES ${MOC_SRCS} ${UI_HDRS} ${RSC_SRCS})
SOURCE_GROUP("Class Diagrams" FILES ${CD_FILES} )
SOURCE_GROUP("Resources" FILES ${RSCS} )
```

```cpp
void Mouse::paint(QPainter *painter, const QStyleOptionGraphicsItem *, QWidget *)
{
    // Body
    painter->setBrush(color);
    painter->drawEllipse(-10, -20, 20, 40);

    // Eyes
    painter->setBrush(Qt::white);
    painter->drawEllipse(-10, -17, 8, 8);
    painter->drawEllipse(2, -17, 8, 8);

    // Nose
    painter->setBrush(Qt::black);
    painter->drawEllipse(QRectF(-2, -22, 4, 4));

    // Pupils
    painter->drawEllipse(QRectF(-8.0 + mouseEyeDirection, -17, 4, 4));
    painter->drawEllipse(QRectF(4.0 + mouseEyeDirection, -17, 4, 4));

    // Ears
    painter->setBrush(scene()->collidingItems(this).isEmpty() ? Qt::darkYellow : Qt::red);
    painter->drawEllipse(-17, -12, 16, 16);
    painter->drawEllipse(1, -12, 16, 16);

    // Tail
    QPainterPath path(QPointF(0, 20));
    path.cubicTo(-5, 22, -5, 22, 0, 25);
    path.cubicTo(5, 27, 5, 32, 0, 30);
    path.cubicTo(-5, 32, -5, 42, 0, 35);
    painter->setBrush(Qt::NoBrush);
    painter->drawPath(path);
}
//! [3]

void Mouse::advance(int step)
{
    if (!step)
        return;
//! [4]
    // Don't move too far away
//! [5]
    QLineF lineToCenter(QPointF(0, 0), mapFromScene(0, 0));
    if (lineToCenter.length() > 150) {
        qreal angleToCenter = ::acos(lineToCenter.dx() / lineToCenter.length());
        if (lineToCenter.dy() < 0)
            angleToCenter = TwoPi - angleToCenter;
        angleToCenter = normalizeAngle((Pi - angleToCenter) + Pi / 2);

        if (angleToCenter < Pi && angleToCenter > Pi / 4) {
            // Rotate left
            angle += (angle < -Pi / 2) ? 0.25 : -0.25;
        } else if (angleToCenter >= Pi && angleToCenter < (Pi + Pi / 2 + Pi / 4)) {
            // Rotate right
            angle += (angle < Pi / 2) ? 0.25 : -0.25;
        }
    } else if (::sin(angle) < 0) {
        angle += 0.25;
    } else if (::sin(angle) > 0) {
        angle -= 0.25;
//! [5] //! [6]
    }
//! [6]

    // Try not to crash with any other mice
//! [7]
    QList<QGraphicsItem *> dangerMice = scene()->items(QPolygonF()
                                                       << mapToScene(0, 0)
                                                       << mapToScene(-30, -50)
                                                       << mapToScene(30, -50));
    foreach (QGraphicsItem *item, dangerMice) {
        if (item == this)
            continue;
        
        QLineF lineToMouse(QPointF(0, 0), mapFromItem(item, 0, 0));
        qreal angleToMouse = ::acos(lineToMouse.dx() / lineToMouse.length());
        if (lineToMouse.dy() < 0)
            angleToMouse = TwoPi - angleToMouse;
        angleToMouse = normalizeAngle((Pi - angleToMouse) + Pi / 2);

        if (angleToMouse >= 0 && angleToMouse < Pi / 2) {
            // Rotate right
            angle += 0.5;
        } else if (angleToMouse <= TwoPi && angleToMouse > (TwoPi - Pi / 2)) {
            // Rotate left
            angle -= 0.5;
//! [7] //! [8]
        }
//! [8] //! [9]
    }
//! [9]

    // Add some random movement
//! [10]
    if (dangerMice.size() > 1 && (qrand() % 10) == 0) {
        if (qrand() % 1)
            angle += (qrand() % 100) / 500.0;
        else
            angle -= (qrand() % 100) / 500.0;
    }
//! [10]

//! [11]
    speed += (-50 + qrand() % 100) / 100.0;

    qreal dx = ::sin(angle) * 10;
    mouseEyeDirection = (qAbs(dx / 5) < 1) ? 0 : dx / 5;

    setRotation(rotation() + dx);
    setPos(mapToParent(0, -(3 + sin(speed) * 3)));
}
//! [11]
```


QHashIterator<QString, int> i(hash);
while (i.hasNext()) {
    i.next();
    cout << i.key() << ": " << i.value() << endl;
}
