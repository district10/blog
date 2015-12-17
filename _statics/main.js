mdPath = 'https://github.com/district10/blog/commits/master';
rawPath = 'https://raw.githubusercontent.com/district10/blog/master';
basePath = 'https://github.com/district10/blog';
pathStringList = document.location.toString().split('/');

function dvorak4tzx( pathParts ) {
    if ( pathParts[0].split(':')[0] === 'file' ) {
        console.log( 'local. no need for duoshuo & zhanzhang.' );
    } else {
        // zhanzhang();
        // duoshuo();
    }

    filename = pathParts[ pathParts.length - 1 ];
    basename = filename.split('.')[0];

    if ( 'index' === basename.substring(0, 5) ) {
        mdPath   = basePath;
        rawPath  = mdPath;
    } else if ( 'post-' === basename.substring(0, 5) ) {
        filename = ( '/_posts/' + basename + '.md' );
        mdPath  += filename;
        rawPath += filename;
    } else if ( 'koans' ===  basename.substring(0, 5) ) {
        filename = '/_koans';
        mdPath  += filename;
        rawPath  = mdPath;
    } else if ( 'notes' === basename.substring(0, 5) ) {
        filename = '/_notes';
        mdPath  += filename;
        rawPath  = mdPath;
    } else {
        filename = '/_static/' + basename + '.md';
        mdPath  += filename;
        rawPath += filename;
    }

    document.getElementById( 'ghraw'  ).href = rawPath;
    document.getElementById( 'ghpage' ).href = mdPath;
}

dvorak4tzx( pathStringList );

function prettyUnixTime( ts ) {
    var date = new Date(ts * 1000);
    var hours = date.getHours();
    var minutes = "0" + date.getMinutes();
    var seconds = "0" + date.getSeconds();
    var sts = hours + ':' + minutes.substr(-2) + ':' + seconds.substr(-2); // 2015 年 03 月 23 日 03 时 36 分 52 秒，周三
    var lts = hours + ':' + minutes.substr(-2) + ':' + seconds.substr(-2); // 03:23, Jan 03, Sat
    return { ts: ts, sts: formattedTime, lts: lts };
}

function appendSharpToHdrs( hdrs ) {
    for ( var i = 0; i < hdrs.length; ++i ) {
        var sharp = document.createElement( 'a' );
        sharp.href = '#' + hdrs[i].id;
        sharp.className = 'hdrRef';
        sharp.innerText = '#';
        hdrs[i].appendChild( sharp );
    }
}

function appendSharp() {
    h1s = document.getElementsByTagName( 'h1' );
    h2s = document.getElementsByTagName( 'h2' );
    h3s = document.getElementsByTagName( 'h3' );
    h4s = document.getElementsByTagName( 'h4' );
    appendSharpToHdrs( h1s );
    appendSharpToHdrs( h2s );
    appendSharpToHdrs( h3s );
    appendSharpToHdrs( h4s );
}

appendSharp();
