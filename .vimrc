runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()
" A minimal vimrc for new vim users to start with.
"
" Referenced here: http://vimuniversity.com/samples/your-first-vimrc-should-be-nearly-empty
"
" Original Author:	 Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Last change:	         2012 Jan 20
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"
"  If you don't understand a setting in here, just type ':h setting'.

"er Us Vi settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

set number

" My preferred default tab settings (makes tabs stand out)
set ts=4 sts=2 sw=2 expandtab

set list listchars=tab:▸\ ,trail:•
set wildmenu

" Refresh CTags
nmap <Leader>c :!ctags --langmap=Ruby:+.haml.slim.erb --extra=+fq -R --langdef=scss --langmap=scss:.scss.sass.css .<CR><CR>
set tags=./tags;

"Next buffer and close old one.
command! BD :bp<bar>:bd#

set complete=.,b,u,]

set wildmode=longest,list:longest

set completeopt=menu,preview

set cpoptions+=$
