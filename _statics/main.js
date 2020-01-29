$(document).ready(function(){

    function hide() { $('.tzx-show').removeClass('tzx-show').addClass('tzx-hide'); }
    function show() { $('.tzx-hide').removeClass('tzx-hide').addClass('tzx-show'); }
    toggleHideShow = (function() {
        var isHiding = true;
        return function() {
            if (isHiding) {
                show();
            } else {
                hide();
            }
            isHiding = !isHiding;
        }
    })();

    function drawershow() { $('div.tzx-drawer').children().children('dd.tzx-drawer-hide').removeClass('tzx-drawer-hide').addClass('tzx-drawer-show'); }
    function drawerhide() { $('div.tzx-drawer').children().children('dd.tzx-drawer-show').removeClass('tzx-drawer-show').addClass('tzx-drawer-hide'); }

    function help() {
        alert(  '方向键有如下功能：\n\n'
             +  '\n1. 返回主页：← ← ←'
             +  '\n2. 显示目录：→ → →'
             +  '\n3. 查看源码：→ → ↓'
         );
    }

    $('body > div.posts > ul > li > a.tzx-hide').each(function(index){
        $(this).parent().addClass('tzx-hide');
    });

    $('a').each(function(index){
        var anchor = $(this).attr('href');
        if (/^[^:]*\.md$/.test(anchor)) {
            $(this).attr({
                href: anchor.substring(0, anchor.length-3)+".html"
            });
        }
    });

    $('body').keydown(function(e){
        var code = e.which;
        if(code==72) {              // key: h,              show help
            help();
        }
    });

    $('#tocboxbody').hide();
    $( ".tzx-tabs" ).tabs();
    $('#copyright').attr( { title: 'last edit: ' + moment( tzxChanges[0].datetime * 1000 ).format("YYYY-MM-DD HH:mm:ss") } );

    $( "a[href^='http://']" ).attr( "target", "_blank" );
    $( "a[href^='https://']" ).attr( "target", "_blank" );
    $( "a[href^='#']" ).attr( "target", "" );
    $( "a[href*='tangzhixiong.com']" ).attr( "target", "" );

    $('h1,h2,h3,h4').each(function(index){
        $('<a class="tzx-header-anchor">&#xf0c1;</a>')
            .attr('href', '#'+$(this).attr('id'))
            .prependTo($(this));
    });

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
    $("img[align='right'], img[align='left']").each(function(){
        $parent = $(this).parent();
        if ( $parent.is('div') && $parent.hasClass('figure') ) {
            $next = $(this).next();
            if ( $next.is('p') && $next.hasClass('caption') ) {
                $parent.attr('align', $(this).attr('align'));
                $(this).attr('align', '');
                // $(this) .attr('title', $next.text()) .attr('alt', $next.text()); $next.hide();
            }
        }
    });
    $("img.w12, img.w13, img.w14, img.mw12, img.mw13, img.mw14").parent().attr('align', 'center');

    $('#tocboxheader').on('click', function(){
        $('#tocboxheader').hide();
        $('#tocboxbody').slideDown();
    });
    $('#tocboxbody').on('click', function(){
        $(this).slideUp();
        $('#tocboxheader').show();
    });

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


    $('.tzx-timestamp').each(function(index){
        var _tss = this.textContent;
        var dt = moment( new Number( _tss ) * 1000 );
        var tooltip = _tss + ': ' + dt.format("YYYY-MM-DD HH:mm:ss");
        this.textContent = dt.format("YYYY/MM/DD HH:mm");
        this.title = tooltip;
    });

    $( "#tzx-changes" ).change(function() {
        $("option:selected").click(function(){
            // TODO: fix this, not work on chrome & safari
            window.location = this.value;
        });
    });
    $('.tzx-changes option').each(function(){
        var _tss = this.textContent;
        var dt = moment( new Number( _tss ) * 1000 );
        this.textContent = dt.format("YYYY/MM/DD HH:mm");
    });
    $('#tzx-changes').appendTo('#footer');

    // 计划去除
    var pathStringList = document.location.toString().split('/');
    var isLocal = 'file' === pathStringList[0].split(':')[0];
    var basePath = 'https://github.com/district10/blog';
    var mdPath = 'https://github.com/district10/blog/commits/master';
    var rawPath = 'https://coding.net/u/dvorak4tzx/p/dvorak4tzx/git/raw/master';

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

    function valid_eggy() {
        var $focused = $(':focus');
        if ($focused.length == 0) {
            return true;
        }
        $focused = $($focused[0]);
        if ($focused.is('textarea') || $focused.is('input')) {
            return false;
        }
        return true;
    }

    var egg = new Egg();
    egg
        .addCode("x", function() {
            if (valid_eggy()) {
                $('.tzx-drawer-hide').removeClass('tzx-drawer-hide');
            }
        })
        .addCode("1", function() {
            if (valid_eggy()) {
                show();
                drawershow();
            }
        })
        .addCode("0", function() {
            if (valid_eggy()) {
                hide();
                drawerhide();
            }
        })
        .addCode("left,right,down",  function() {
            if (valid_eggy()) {
                show();
                drawershow();
            }
        })
        .addCode("left,right,up",    function() {
            if (valid_eggy()) {
                hide();
                drawerhide();
            }
        })
        .addCode("left,left,left", function() {
            if (valid_eggy()) {
                window.location = "index.html";
            }
        })
        .addCode("right,right,right", function() {
            if (valid_eggy()) {
                $('#tocboxheader').click();
            }
        })
        .addCode("right,right,down", function() {
            if (valid_eggy()) {
                window.location = "https://raw.githubusercontent.com/district10/blog/master/" + tzxFilename;
            }
        })
        .listen();

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

    $('.copy').each(function(){
        $(this).attr({
            'data-clipboard-text': $(this).text(),
            title: "点击复制"
        });
    });
    var copycode = new Clipboard('.copy');
    copycode.on('success', function(e) {
        console.info('Action:', e.action);
        console.info('Text:', e.text);
        console.info('Trigger:', e.trigger);
        e.clearSelection();
    });
    copycode.on('error', function(e) {
        console.error('Action:', e.action);
        console.error('Trigger:', e.trigger);
    });
});
