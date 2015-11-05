% 怎么写博客
% Tang Zhixiong
% 2015-06-15
% Tags

Code High Light
===============

```cpp
#ifndef SIGN_LOGGER_H
#define SIGN_LOGGER_H

#define LOG_OUTPATH_FORMAT ( "D:/log_%lld.txt"         ) // log_<timestamp>.txt

#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <QDebug>
#include <QObject>
#include <QString>
#include <QMutex>
#include "Utils.h"

#define PARTIAL_THRESHOLD ( 0.3 )

class Log
{
public:
    QString path;
    double x, y, dx, dy;
    int idx;

private:
    bool valid;
    static int count;

public:
    Log( ) { x = y = dx = dy = -0.1; validate(); }
    Log( const QString &path, double x = 0.0, double y = 0.0, double dx = 0.0, dniceouble dy = 0.0 )
        : path( path ), x( x ), y( y ), dx( dx ), dy( dy ) { validate(); }
    
    void validate( ) {

        if ( x <= 0 || y <= 0 || dx <= 0 || dy <= 0 ||
             x < dx/2.0 || y < dy/2.0 ||
             qMin(dx, dy) / qMax(dx, dy) < PARTIAL_THRESHOLD ) {
            valid = false;
        } else {
            valid = true;
            idx = ++count;
        }
    }
    bool isValid( ) const { return valid; }

    QString save( ) const {
        return isValid() 
            ? QString().sprintf( "%d %s %.4lf %.4lf %.4lf %.4lf", idx,
                                  qPrintable( path ),
                                  x, y, dx, dy )
            : "";
    }

    QString show ( ) const {
        return isValid() 
            ? QString().sprintf( "%d %s %.4lf %.4lf %.4lf %.4lf", idx,
                                  qPrintable( Utils::basename(path) ),
                                  x, y, dx, dy )
            : "";
    }

    
    bool load( const QString &logstr ) {
        std::string tmpPath;
        bool done = ( 4 == sscanf( qPrintable(logstr), 
                                   "%d %s %lf %lf %lf %lf", 
                                   &idx, &tmpPath, &x, &y, &dx, &dy ) );
        path = QString( tmpPath.c_str() );
        validate();
        return done && isValid();
    }
};

class SignLogger
{
private:
    static QMutex           mutex;
    static QList<Log>       logs;

private:
    static QList<Log> refresh( );

public:
    SignLogger( ) { /* Empty Logger Constructor */ }

    static void clear( ) { logs.clear(); }

    static int getCount( ) { return logs.length(); }

    static bool logging( const Log &log )
    {
        if ( !log.isValid() ) { 
            return false;
        }
        QMutexLocker locker( &mutex );
        logs.append( log );
        qDebug() << log.show();
        return true;
    }

    static void save( const QString &path );
    static void load( const QString &path );

    static const QList<Log> &getLogs( ) {
        return logs;
    }
};

#endif  // SIGN_LOGGER_H
```