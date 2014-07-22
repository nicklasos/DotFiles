set nocompatible " be iMproved
filetype off " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'molokai'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Nicklasos/vimphphtml'
Plugin 'vim-scripts/grep.vim'
Plugin 'mattn/emmet-vim'
Plugin 'matchit.zip'
Plugin 'AutoComplPop'
Plugin 'tpope/vim-fugitive'
Plugin 'goatslacker/mango.vim'
Plugin 'bootleq/vim-tabline'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'gregsexton/gitv'
Plugin 'powerman/vim-plugin-ruscmd'
Plugin 'Pychimp/vim-luna'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'mhinz/vim-startify'
Plugin 'skammer/vim-css-color'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jimenezrick/vimerl'


" Status lines
Plugin 'bling/vim-airline'

" SnipMate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'Nicklasos/vim-snippets'
Plugin 'garbas/vim-snipmate'

" Syntaxes
Plugin 'jelera/vim-javascript-syntax'
Plugin 'briancollins/vim-jst'
Plugin 'slim-template/vim-slim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'StanAngeloff/php.vim'
Plugin 'spf13/PIV'
Plugin 'tpope/vim-rails.git'

" Colors
Plugin 'yearofmoo/Vim-Darkmate'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'chriskempson/base16-vim'
Plugin 'zefei/simple-dark'
Plugin 'flazz/vim-colorschemes'
Plugin 'stephenmckinney/vim-solarized-powerline'

call vundle#end()

filetype plugin indent on

let olokai_original = 1
colorscheme molokai

let g:Powerline_symbols = 'fancy' " Powerline (makes neat status bar)

" Hide tildas
highlight NonText guifg=bg

let g:EasyMotion_leader_key = ','

if &term == "xterm"
  colorscheme kellys    
endif

syntax enable

"set guifont=Ubuntu\ Mono\ 11.3
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

nnoremap <C-T> :tabe\|:Startify<CR>

" key mapping for tab navigation
nmap <Tab> gt
nmap <S-Tab> gT

:nmap <C-Q> :q<CR>

let s:doing_indent_inits = 1

" deliteMate disable <,> autoclosing
"let delimitMate_matchpairs = "(:),[:],{:},':',\":\""

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

" PHP
let g:DisableAutoPHPFolding = 1
let php_folding = 0
set nofoldenable

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
"let g:airline_left_sep = '⮀'
"let g:airline_left_alt_sep = '⮁'
"let g:airline_right_sep = '⮂'
"let g:airline_right_alt_sep = '⮃'
"let g:airline#extensions#branch#symbol = '⭠ '
"let g:airline#extensions#readonly#symbol = '⭤'
"let g:airline_linecolumn_prefix = '⭡ '

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
