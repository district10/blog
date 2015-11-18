output = '';

books = document.getElementsByClassName('subject-item');
for ( var i = 0; i < books.length; ++i ) {
    dpage = books[i].children[0].children[0].href;
    title = books[i].children[1].children[0].children[0].title;
    cover = books[i].children[0].children[0].children[0].src;
    // liText = '#. [' + title + '](' + dpage + ')\n';
    liImag = '[![](' + cover + ')](' + dpage + ' "' + title + '")\n';
    output += liImag;
}

listP = document.createElement('p')
listP.innerText = output;
document.getElementsByTagName('body')[0].appendChild( listP );