var pathStringList = document.location.toString().split('/');
var isLocal = 'file' === pathStringList[0].split(':')[0];

var mdPath = 'https://github.com/district10/blog/commits/master';
var rawPath = 'https://raw.githubusercontent.com/district10/blog/master';
var basePath = 'https://github.com/district10/blog';

function show() {
    var hides = document.getElementsByClassName('tzx');
    if ( hides.length !== 0 ) {
        hides[0].style.visibility = 'visible';
    }
}

function dvorak4tzx( pathParts ) {
    if ( isLocal ) {
        console.log( 'local. no need for duoshuo & zhanzhang.' );
        show();
        if ( document.location.toString().endsWith("index.html") ) {
            // document.location = "sitemap.html"
        }
    } else {
        // zhanzhang();
        // duoshuo();
    }

    filename = pathParts[ pathParts.length - 1 ];
    basename = filename.split('.')[0];

    if ( 'index' === basename.substring(0, 5) || document.location.toString().endsWith('.com') ) {
        mdPath   = basePath;
        rawPath  = mdPath;
    } else if ( 'post-' === basename.substring(0, 5) ) {
        filename = ( '/_posts/' + basename + '.md' );
        mdPath  += filename;
        rawPath += filename;
    } else {
        filename = '/_pages/' + basename + '.md';
        mdPath  += filename;
        rawPath += filename;
    } 

    document.getElementById( 'ghraw'  ).href = rawPath;
    document.getElementById( 'ghpage' ).href = mdPath;
}

dvorak4tzx( pathStringList );

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

// from: http://stackoverflow.com/questions/2907482/how-to-get-the-query-string-by-javascript
function getQueryStrings() { 
    var assoc  = {};
    var decode = function (s) { return decodeURIComponent(s.replace(/\+/g, " ")); };
    var queryString = location.search.substring(1); 
    var keyValues = queryString.split('&'); 

    for(var i in keyValues) { 
        var key = keyValues[i].split('=');
        if (key.length > 1) {
            assoc[decode(key[0])] = decode(key[1]);
        }
    } 

    return assoc; 
} 

var qs = getQueryStrings();
var shallShow = 'true' === qs['show'] || 'false' === qs['hide'];
var shallHavePrivilege = !('off' === qs['local']);

function hideNoMore( cb ) {
    var hides = document.getElementsByClassName('hide');
    for ( var i = 0; i < hides.length; ++i ) {
        hides[i].style.visibility = 'visible';
        cb( hides[i] );
    }
}

if ( ( isLocal && shallHavePrivilege  )
        || shallShow ) {
    hideNoMore( function( h ) {
        if ( isLocal ) {
            if ( shallHavePrivilege ) {
                h.style.border = '2px dashed pink'; // privilege
            } else {
                h.style.border = '2px dashed lime'; // lame
            }
        }
    });
}

if ( isLocal && qs['more'] === 'false' ) {
    if ( document.location.toString().endsWith("index2.html") ) {
        document.location = "index.html"
    }
}
