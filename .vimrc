set nocompatible " be iMproved
filetype off

set autowrite " autowrite file on :make command

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'molokai'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-scripts/grep.vim'
Plugin 'mattn/emmet-vim'
Plugin 'matchit.zip'
Plugin 'AutoComplPop'
Plugin 'bootleq/vim-tabline'
Plugin 'easymotion/vim-easymotion'
Plugin 'powerman/vim-plugin-ruscmd'
Plugin 'Pychimp/vim-luna'
Plugin 'mhinz/vim-startify'
Plugin 'skammer/vim-css-color'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'nicklasos/vimphphtml'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
" Plugin 'airblade/vim-gitgutter'

" SnipMate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'

" Syntaxes
Plugin 'pangloss/vim-javascript'
Plugin 'goatslacker/mango.vim' " Syntaxe highlight for JavaScript
Plugin 'slim-template/vim-slim'
Plugin 'spf13/PIV'
Plugin 'tpope/vim-rails.git'
Plugin 'hhvm/vim-hack'
Plugin 'fatih/vim-go'
" Plugin 'StanAngeloff/php.vim'

" Clojure
" Plugin 'guns/vim-clojure-static'
" Plugin 'tpope/vim-fireplace'

" Colors
Plugin 'yearofmoo/Vim-Darkmate'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'chriskempson/base16-vim'
Plugin 'zefei/simple-dark'
Plugin 'flazz/vim-colorschemes'
Plugin 'stephenmckinney/vim-solarized-powerline'
Plugin 'lifepillar/vim-solarized8'
Plugin 'morhetz/gruvbox'

call vundle#end()

" Color scheme
" let olokai_original = 1
" colorscheme molokai
" colorscheme simple-dark
" colorscheme solarized
set termguicolors
set background=dark
colorscheme solarized8_flat
" colorscheme gruvbox


if &term == "xterm"
  colorscheme kellys    
endif

filetype plugin indent on

syntax enable

filetype on
filetype plugin on
filetype indent on

set gfn=Monaco:h12
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
set wildmode=longest:full,list:full
set nohlsearch
let s:doing_indent_inits = 1
"set guifont=Ubuntu\ Mono\ 11.3
"set clipboard=unnamedplus " Работать с буфером обмена сиситемы

" GUI options
set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=L "remove left-hand scroll bar
set guioptions-=r "remove right-hand scroll bar
set guioptions-=e "remove tabs
" Hide tildas
highlight NonText guifg=bg

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

" http://vim.wikia.com/wiki/Insert_newline_without_entering_insert_mode
map <S-Enter> O<Esc>
map <CR> o<Esc>

" Moving lines
vnoremap > >gv
vnoremap < <gv

" map <F2> :NERDTreeToggle<CR>
map <F2> :NERDTreeTabsToggle<CR>

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

let mapleader = ","

" Ariline
" let g:airline_theme='powerlineish'
" let g:airline_theme='deus'
let g:airline_theme='solarized'

let g:airline_powerline_fonts = 1

" testing rounded separators (extra-powerline-symbols):
let g:airline_left_sep = "\uE0B4"
let g:airline_right_sep = "\uE0B6"
 
" Startify
let g:startify_bookmarks = ['~/.vimrc', '~/Projects']
let g:startify_list_order = ['files', 'sessions', 'bookmarks']
let g:ctrlp_reuse_window = 'startify'

" Golang
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>f  <Plug>(go-test-func)
autocmd FileType go nmap <leader>m  <Plug>(go-imports)
let g:go_list_type = "quickfix"
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}
