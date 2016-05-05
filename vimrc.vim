" gvim ~/.vimrc, add 'source path/to/this/file'
set nocompatible

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set cursorline
set expandtab ts=4 sw=4 ai
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936
set formatoptions+=BmM
set ignorecase

ab rasa refs and see also

ab fab      <i class="icon-book"></i>
ab facd     <i class="icon-cloud-download"></i>
ab faes     <i class="icon-exclamation-sign"></i>
ab faf      <i class="icon-flag"></i>
ab fah      <i class="icon-heart"></i>
ab fahe     <i class="icon-heart-empty"></i>
ab fais     <i class="icon-info-sign"></i>
ab falb     <i class="icon-lightbulb"></i>
ab fapp     <i class="icon-pushpin"></i>
ab fas      <i class="icon-star"></i>
ab fase     <i class="icon-star-empty"></i>
ab fat      <i class="icon-tag"></i>
ab fats     <i class="icon-tags"></i>
ab fatd     <i class="icon-thumbs-down"></i>
ab fatu     <i class="icon-thumbs-up"></i>

ab qwhudoc http://whudoc.qiniudn.com/2016/
ab qgnat   http://gnat.qiniudn.com/

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set nu
set guioptions=""
"set laststatus=2
"set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%h\ \ \ Line:\ %l

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.md :call DeleteTrailingWS()

vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>
vnoremap <silent> gv :call VisualSelection('gv')<CR>
vnoremap <silent> r :call VisualSelection('replace')<CR>

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

language messages en_US.utf-8

set diffexpr=MyDiff()
function MyDiff()
   let opt = '-a --binary '
   if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
   if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
   let arg1 = v:fname_in
   if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
   let arg2 = v:fname_new
   if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
   let arg3 = v:fname_out
   if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
   if $VIMRUNTIME =~ ' '
     if &sh =~ '\<cmd'
       let eq = '"'
       if empty(&shellxquote)
         let l:shxq_sav = ''
         set shellxquote&
       endif
       let cmd = '"' . $VIMRUNTIME . '\diff"'
     else
       let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
     endif
   else
     let cmd = $VIMRUNTIME . '\diff'
   endif
   silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
   if exists('l:shxq_sav')
     let &shellxquote=l:shxq_sav
   endif
endfunction

set nobackup
set nowritebackup
set noswapfile

" silent execute NeoKbd()
function! NeoKbd()
    imap a b
    imap b s
    " a -> s
    " b -> s
endfunction
" so this won't work as expected
"
" instead, use `:set keymap=dvorak` (works only in insert mode)
