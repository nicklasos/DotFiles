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
Bundle 'kchmck/vim-coffee-script'
Bundle 'Nicklasos/vimphphtml'
Bundle 'Raimondi/delimitMate'
Bundle 'vim-scripts/grep.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'Shougo/neocomplcache'
Bundle 'matchit.zip'

" SnipMate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "Nicklasos/vim-snippets"
Bundle "AutoComplPop"

filetype plugin indent on

let molokai_original = 1
colorscheme molokai
set guifont=Ubuntu\ Mono\ 11.5
set t_Co=256
set autoindent
set smartindent
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
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

let delimitMate_expand_cr = 1

"let g:Powerline_symbols = 'fancy' " Powerline (makes neat status bar)

" Source the vimrc file after saving it
if has("autocmd")
  " autocmd bufwritepost .vimrc source $MYVIMRC
endif

" enabling moving line up or down
nnoremap <C-k> mz:m-2<CR>`z==
inoremap <C-j> <Esc>:m+<CR>==gi
inoremap <C-k> <Esc>:m-2<CR>==gi
vnoremap <C-j> :m'>+<CR>gv=`<my`>mzgv`yo`z
nnoremap <C-j> mz:m+<CR>`z==
vnoremap <C-k> :m'<-2<CR>gv=`>my`<mzgv`yo`z

" tab navigation
nnoremap <C-T> :tabe<CR>

"key mapping for tab navigation
nmap <Tab> gt
nmap <S-Tab> gT

:nmap <C-Q> :q<CR>

let s:doing_indent_inits = 1

" deliteMate disable <,> autoclosing
let delimitMate_matchpairs = "(:),[:],{:},':',\":\""


" http://vim.wikia.com/wiki/Insert_newline_without_entering_insert_mode
map <S-Enter> O<Esc>
map <CR> o<Esc>
