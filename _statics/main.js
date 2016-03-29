$( ".tzx-tabs" ).tabs();

$("img").each(function(index){
    var src = $(this).attr('src');
    $(this).attr({
        src: "data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==",
        'data-src': src,
        onload: "lzld(this)"
    });
});

$(document).ready(function(){

    $('#showDisqus').on('click', function(){
        console.log('loading disqus...');
        $.ajax({
            type: "GET",
            url: "http://dvorak4tzx.disqus.com/embed.js",
            dataType: "script",
            cache: true
        });
        $(this).fadeOut();
    });

    var pathStringList = document.location.toString().split('/');
    var isLocal = 'file' === pathStringList[0].split(':')[0];
    var mdPath = 'https://github.com/district10/blog/commits/master';
    var rawPath = 'https://coding.net/u/dvorak4tzx/p/dvorak4tzx/git/raw/master';
    var basePath = 'https://github.com/district10/blog';

    function show() {
        var hides = document.getElementsByClassName('tzx');
        if ( hides.length !== 0 ) {
            hides[0].style.visibility = 'visible';
        }
    };

    function dvorak4tzx( pathParts ) {
        filename = pathParts[ pathParts.length - 1 ];
        basename = filename.split('.')[0];
        if ( 'index' === basename.substring(0, 5)
           || document.location.toString().endsWith('.com') 
           || document.location.toString().endsWith('.me') ) {
            mdPath   = basePath;
            rawPath  = basePath;
        } else if ( 'post-' === basename.substring(0, 5) ) {
            filename = ( '/_posts/' + basename + '.md' );
            mdPath  += filename;
            rawPath += filename;
        } else {
            filename = '/_pages/' + basename + '.md';
            mdPath  += filename;
            rawPath += filename;
        } 

        $('#ghraw').href = rawPath;
        $('#ghpage').href = mdPath;
    };

    dvorak4tzx( pathStringList );

    function appendSharpToHdrs( hdrs ) {
        for ( var i = 0; i < hdrs.length; ++i ) {
            var sharp = document.createElement( 'a' );
            sharp.href = '#' + hdrs[i].id;
            sharp.className = 'hdrRef';
            // sharp.innerText = '#';
            sharp.textContent = '#';
            hdrs[i].appendChild( sharp );
        }
    };

    function appendSharp() {
        h1s = document.getElementsByTagName( 'h1' );
        h2s = document.getElementsByTagName( 'h2' );
        h3s = document.getElementsByTagName( 'h3' );
        h4s = document.getElementsByTagName( 'h4' );
        appendSharpToHdrs( h1s );
        appendSharpToHdrs( h2s );
        appendSharpToHdrs( h3s );
        appendSharpToHdrs( h4s );
    };

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
    };

    if ( ( isLocal && shallHavePrivilege  ) || shallShow ) {
        hideNoMore( function( h ) {
            if ( isLocal ) {
                if ( shallHavePrivilege ) {
                    h.style.border = '2px dashed pink'; // privilege
                } else {
                    h.style.border = '2px dashed lime'; // lame
                }
            }
        });
    };

    if ( isLocal && qs['more'] === 'false' ) {
        if ( document.location.toString().endsWith("index2.html") ) {
            document.location = "index.html"
        }
    };

    appendSharp();
});
