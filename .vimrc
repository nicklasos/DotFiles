set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-rails.git'
Bundle 'molokai'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'slim-template/vim-slim'

filetype plugin indent on

let molokai_original = 1
colorscheme molokai
set t_Co=256
set autoindent
set smartindent
set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoread
set smartcase " Override the 'ignorecase' option if the search pattern contains upper case characters
set incsearch
set shiftround " drop unused spaces
set wrap " перенос длинных строк
set lbr " переносить целые слова
set mousehide " скрывать мышь в режиме ввода текста"
set encoding=utf-8
set nu " Номерация строк
set visualbell "No sounds
set laststatus=2
set ignorecase " Игнорировать регистр букв при поиске
set guitablabel=%t " tab name
set nobackup " Отключаеd создание бэкапов
set noswapfile " Отключаем создание swap файлов
set clipboard=unnamedplus " Работать с буфером обмена сиситемы

" Убрать тулбары
set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=L "remove right-hand scroll bar

filetype on
filetype plugin on
filetype indent on
filetype on
filetype plugin on
filetype indent on

"let g:Powerline_symbols = 'fancy' " Powerline (makes neat status bar)
