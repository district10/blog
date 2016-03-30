$( ".tzx-tabs" ).tabs();

/*
$('a').each(function() {
   var a = new RegExp('/' + window.location.host + '/');
   var b = !window.location.host && !this.href.startsWith('http');
   if (!a.test(this.href) || b) {
       // This is an external link or file, or localhost
       $(this).click(function(event) {
           event.preventDefault();
           event.stopPropagation();
           window.open(this.href, '_blank');
       });
   }
});
*/

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

        $('#ghraw').attr('href', rawPath);
        $('#ghpage').attr('href', mdPath);
    };

    dvorak4tzx( pathStringList );

    jQuery('h1,h2,h3,h4').each(function(index){
        jQuery('<a>#</a>')
          .addClass('hdrRef')
          .attr('href', '#'+$(this).attr('id'))
          .appendTo($(this));
    });

    function getQueryStrings() { 
        var assoc  = {};
        var decode = function (s) { return decodeURIComponent(s.replace(/\+/g, " ")); };
        var queryString = location.search.substring(1); 
        var keyValues = queryString.split('&'); 
        for(var i in keyValues) { 
            var key = keyValues[i].split('=');
            if (key.length > 1) { assoc[decode(key[0])] = decode(key[1]); }
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

    // appendSharp();
});
