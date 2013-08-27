set nocompatible " be iMproved
filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'molokai'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'slim-template/vim-slim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'Nicklasos/vimphphtml'
Bundle 'Raimondi/delimitMate'
Bundle 'vim-scripts/grep.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'matchit.zip'
Bundle 'AutoComplPop'
Bundle 'tpope/vim-fugitive'
Bundle 'flazz/vim-colorschemes'
Bundle 'stephenmckinney/vim-solarized-powerline'
Bundle 'goatslacker/mango.vim'
Bundle 'bootleq/vim-tabline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'gregsexton/gitv'
" Bundle 'Yggdroot/indentLine'
" Bundle 'tomtom/quickfixsigns_vim'
" Bundle 'airblade/vim-gitgutter'
Bundle 'powerman/vim-plugin-ruscmd'
Bundle 'Pychimp/vim-luna'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'mhinz/vim-startify'
Bundle 'skammer/vim-css-color'

" Status lines
" Bundle 'Lokaltog/vim-powerline'
" Bundle 'Lokaltog/powerline'
Bundle 'bling/vim-airline'
" Bundle 'itchyny/lightline.vim'

" SnipMate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "Nicklasos/vim-snippets"
Bundle "garbas/vim-snipmate"

" Syntaxes
Bundle 'jelera/vim-javascript-syntax'
Bundle 'briancollins/vim-jst'

" Languages support
Bundle 'spf13/PIV'
Bundle 'tpope/vim-rails.git'

" Colors
Bundle 'yearofmoo/Vim-Darkmate'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'chriskempson/base16-vim'
Bundle 'zefei/simple-dark'

filetype plugin indent on

let molokai_original = 1
colorscheme molokai

let g:Powerline_symbols = 'fancy' " Powerline (makes neat status bar)

let g:EasyMotion_leader_key = ','

if &term == "xterm"
  colorscheme kellys    
endif

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=60 columns=200
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif

set guifont=Ubuntu\ Mono\ 11.3
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
set novisualbell
set laststatus=2
set ignorecase " Игнорировать регистр букв при поиске
set guitablabel=%t " tab name
set nobackup " Отключаеd создание бэкапов
set noswapfile " Отключаем создание swap файлов
set clipboard=unnamedplus " Работать с буфером обмена сиситемы
set wildmode=longest:full,list:full

" GUI options
set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=L "remove left-hand scroll bar
set guioptions-=r "remove right-hand scroll bar
set guioptions-=e "remove tabs

filetype on
filetype plugin on
filetype indent on

" enabling moving line up or down
nnoremap <C-k> mz:m-2<CR>`z==
inoremap <C-j> <Esc>:m+<CR>==gi
inoremap <C-k> <Esc>:m-2<CR>==gi
vnoremap <C-j> :m'>+<CR>gv=`<my`>mzgv`yo`z
nnoremap <C-j> mz:m+<CR>`z==
vnoremap <C-k> :m'<-2<CR>gv=`>my`<mzgv`yo`z

" tab navigation
nnoremap <C-T> :tabe<CR>

" key mapping for tab navigation
nmap <Tab> gt
nmap <S-Tab> gT

:nmap <C-Q> :q<CR>

let s:doing_indent_inits = 1

" deliteMate disable <,> autoclosing
let delimitMate_matchpairs = "(:),[:],{:},':',\":\""

" http://vim.wikia.com/wiki/Insert_newline_without_entering_insert_mode
map <S-Enter> O<Esc>
map <CR> o<Esc>

" Moving lines
vnoremap > >gv
vnoremap < <gv

map <F2> :NERDTreeToggle<CR>

" SnipMate
let g:snipMate = {}
let g:snipMate.scope_aliases = {} 
let g:snipMate.scope_aliases['php'] = 'php,html'
let g:snipMate.scope_aliases['html'] = 'html'

" Navigate between splits
:nmap <silent> <M-h> :wincmd h<CR>
:nmap <silent> <M-j> :wincmd j<CR>
:nmap <silent> <M-k> :wincmd k<CR>
:nmap <silent> <M-l> :wincmd l<CR>

" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" let g:quickfixsigns_classes = ['vcsdiff']
" let g:gitgutter_eager = 0

" Ariline
let g:airline_theme='powerlineish'
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline#extensions#branch#symbol = '⭠ '
let g:airline#extensions#readonly#symbol = '⭤'
let g:airline_linecolumn_prefix = '⭡ '

" Startify
let g:startify_bookmarks = ['~/.vimrc', '/home/www-data/www/Backend', '~/Projects']
let g:startify_list_order = ['files', 'sessions', 'bookmarks']
let g:ctrlp_reuse_window = 'startify'
let g:startify_custom_header = [
            \ '   __      ___            ______ ____   ',
            \ '   \ \    / (_)           |____  |___ \ ',
            \ '    \ \  / / _ _ __ ___       / /  __) |',
            \ '     \ \/ / | | ''_ ` _ \     / /  |__ <',
            \ '      \  /  | | | | | | |   / /   ___) |',
            \ '       \/   |_|_| |_| |_|  /_(_) |____/ ',
            \ '',
            \ '',
            \ ]
