set nocompatible " be iMproved
filetype off " required!

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
Bundle 'matchit.zip'
Bundle 'AutoComplPop'
Bundle 'tpope/vim-fugitive'
Bundle 'flazz/vim-colorschemes'
Bundle 'stephenmckinney/vim-solarized-powerline'
Bundle 'briancollins/vim-jst'
Bundle 'goatslacker/mango.vim'
Bundle 'bootleq/vim-tabline'
Bundle 'Lokaltog/vim-easymotion'

" SnipMate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "Nicklasos/vim-snippets"
Bundle "garbas/vim-snipmate"

filetype plugin indent on

let molokai_original = 1
colorscheme molokai
"set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized

let g:Powerline_symbols = 'fancy' " Powerline (makes neat status bar)
"let g:Powerline_colorscheme='solarized'

let g:EasyMotion_leader_key = ','

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

let delimitMate_expand_cr = 1


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

" Moving lines
vnoremap > >gv
vnoremap < <gv

map <F2> :NERDTreeToggle<CR>

" SnipMate
let g:snipMate = {}
let g:snipMate.scope_aliases = {} 
let g:snipMate.scope_aliases['php'] = 'php,html'
let g:snipMate.scope_aliases['html'] = 'html'
