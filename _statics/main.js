$(document).ready(function(){
    $('#tocboxbody').slideUp();
    $( ".tzx-tabs" ).tabs();
    $( "a" ).attr( "target", "_blank" );
    $( "a[href*='#']" ).attr( "target", "" );
    $("img").each(function(index){
        var src = $(this).attr('src');
        $(this).attr({
            src: "data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==",
            'data-src': src,
            onload: "lzld(this)"
        });

        $a = $(this).parent('a');
        if ($a.length) {
            $a.addClass('tzx-dumb');
            $(this).addClass('tzx-dumb');
        }
    });

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
    $('#tocboxheader').on('click', function(){
        $('#tocboxheader').hide();
        $('#tocboxbody').slideDown();
    });
    $('#tocboxbody').on('click', function(){
        $(this).slideUp();
        $('#tocboxheader').show();
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
        jQuery('<a class="tzx-header-anchor">#</a>')
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

    $('div.tzx-drawer[shy]').each(function(){
        $(this).children().children('dd').toggleClass('tzx-drawer-hide');
    });

    $('div.tzx-drawer').on( 'click', function(event){
        $(this).children().children('dd').toggleClass('tzx-drawer-hide');
        if ($(this).children().children('dd:eq(0)').hasClass('tzx-drawer-hide')) {
            if ( $(this).offset().top < pageYOffset ) {
                $('body,html').animate({scrollTop:$(this).offset().top},300)
            }
        }
        event.stopPropagation();
    });

    $( "#tzx-changes" )
        .change(function() {
            $("option:selected").click(function(){
                // FIX THIS, not work on chrome & safari
                window.location = this.value;
            });
        });

    $('.tzx-timestamp').each(function(index){
        var _tss = this.textContent;
        var dt = moment( new Number( _tss ) * 1000 );
        var tooltip = _tss + ': ' + dt.format("YYYY-MM-DD HH:mm:ss");
        this.textContent = dt.format("YYYY/MM/DD HH:mm");
        this.title = tooltip;
    });

    $('.tzx-changes option').each(function(){
        var _tss = this.textContent;
        var dt = moment( new Number( _tss ) * 1000 );
        this.textContent = dt.format("YYYY/MM/DD HH:mm");
    });

    $(function(){
        $('#tzx-changes').appendTo('#footer');
    });

});

$(function($){
    var egg = new Egg();
    egg
        .addCode("n,o,t,e,s", function() {
            window.location = "notes.html";
        })
        .addCode("t,z,x", function() {
            $('.tzx-hide').removeClass('tzx-hide').addClass('tzx-show');
            $('.tzx-drawer-hide').removeClass('tzx-drawer-hide');
        })

        .addCode("s,h,o,w", function() {
            $('.tzx-hide').removeClass('tzx-hide').addClass('tzx-show');
            $('div.tzx-drawer').children().children('dd.tzx-drawer-hide').removeClass('tzx-drawer-hide').addClass('tzx-drawer-show');
        })

        .addCode("h,i,d,e", function() {
            $('.tzx-show').removeClass('tzx-show').addClass('tzx-hide');
            $('div.tzx-drawer').children().children('dd.tzx-drawer-show').removeClass('tzx-drawer-show').addClass('tzx-drawer-hide');
        })
        .addCode("x", function() {
            $('.tzx-show').removeClass('tzx-show').addClass('tzx-hide');
        })

        .addCode("down,right,down,down,right,down", function() {
            window.location = "http://butman.club/";
        })
        .addCode("b,u,t,m,a,n", function() {
            window.location = "http://butman.club/";
        })
        .addHook(function(){
            // console.log("Hook called for: " + this.activeEgg.keys);
            // console.log(this.activeEgg.metadata);
        }).listen();
});

$(function(){
    var clipboard = new Clipboard('.btn');
    clipboard.on('success', function(e) {
        console.info('Action:', e.action);
        console.info('Text:', e.text);
        console.info('Trigger:', e.trigger);

        e.clearSelection();
    });

    clipboard.on('error', function(e) {
        console.error('Action:', e.action);
        console.error('Trigger:', e.trigger);
    });
});
