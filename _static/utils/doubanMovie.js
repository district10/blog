output = '';

movies = document.getElementsByClassName('item');
for ( var i = 0; i < movies.length; ++i ) {
    dpage = movies[i].children[0].children[0].href;
    title = movies[i].children[1].children[0].children[0].children[0].innerText
    cover = movies[i].children[0].children[0].children[0].src;
    // liText = '#. [' + title + '](' + dpage + ')\n';
    liImag = '[![](' + cover + ')](' + dpage + ' "' + title + '")\n';
    output += liImag;
}

listP = document.createElement('p')
listP.innerText = output;
document.getElementsByTagName('body')[0].appendChild( listP );