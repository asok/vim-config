set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'ctrlp.vim'
  let g:ctrlp_max_height = 50
Bundle 'https://github.com/altercation/vim-colors-solarized.git'
Bundle 'Conque-Shell'
Bundle 'git://github.com/skwp/vim-rspec.git'
Bundle 'rails.vim'
Bundle 'surround.vim'
Bundle 'fugitive.vim'
Bundle 'The-NERD-Commenter'
Bundle 'The-NERD-tree'
Bundle 'Tabular'
Bundle 'delimitMate.vim'
Bundle 'YankRing.vim'
Bundle 'matchit.zip'
Bundle 'nginx.vim'
Bundle 'jQuery'
Bundle 'endwise.vim'
Bundle 'Syntastic'
  let g:syntastic_enable_highlighting = 1

filetype plugin indent on     " required! 
"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

"navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

syntax enable
set background=dark
colorscheme solarized

set guifont=Menlo:h14

nnoremap <silent> <D-j> :bp<CR>
nnoremap <silent> <D-k> :bn<CR>

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"store lots of :cmdline history
set history=1000

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

"set number      "add line numbers
set showbreak=...
set wrap linebreak nolist

"statusline setup
set statusline=%t       "tail of the filename
set statusline+=%m       "modified flag

"Git
set statusline+=%{fugitive#statusline()}

"RVM
set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''}

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines


set laststatus=2

"turn off needless toolbar on gvim/mvim
set guioptions-=T

set wildmode=longest:full,full   "make cmdline tab completion similar to zsh
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

"hide buffers when not displayed
set hidden
 
"NERDTree
let NERDTreeMouseMode = 3
let NERDTreeQuitOnOpen = 1

let mapleader = ","

"disable scrolls
:setglobal guioptions-=L
:setglobal guioptions-=l
:setglobal guioptions-=R
:setglobal guioptions-=r
:setglobal guioptions-=b
:setglobal guioptions-=h

map <silent> <Leader>a :CtrlPMRUFiles<CR>
map <silent> <Leader>b :CtrlPBuffer<CR>
map <silent> <Leader>t :CtrlP<CR>
map <silent> <Leader>n :NERDTreeToggle<CR>
map <Leader>e :e 
map <Leader>E :e ~/
map <Leader>m :Rmodel 
map <Leader>M :Rmodel<CR>
map <Leader>c :Rcontroller 
map <Leader>C :Rcontroller<CR>
map <Leader>v :Rview 
map <Leader>V :Rview<CR>
map <Leader>y :ConqueTerm bash<CR>
imap jk <ESC>
imap kj <ESC>

set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif
