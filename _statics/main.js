// 多说
function duoshuo() {
    var duoshuoQuery = {short_name:"tangzx"};
    var ds = document.createElement('script');
    ds.type = 'text/javascript';ds.async = true;
    ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
    ds.charset = 'UTF-8';
    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ds);
};

// 站长统计
function zhanzhang() {
    var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(unescape("%3Cspan id='cnzz_stat_icon_1256728037'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1256728037%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));
}

mdPath = 'https://github.com/district10/blog/blob/master';
rawPath = 'https://raw.githubusercontent.com/district10/blog/master';
basePath = 'https://github.com/district10/blog';
pathStringList = document.location.toString().split('/');

function dvorak4tzx( pathParts ) {
    if ( pathParts[0].split(':')[0] === 'file' ) {
        console.log( 'local. no need for duoshuo & zhanzhang.' );
    } else {
        zhanzhang();
        duoshuo();
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
