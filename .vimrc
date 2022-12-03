" Anoop Elias vimrc

set nocompatible

" Install vim-plug if it is not there already
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" plugins
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-unimpaired'
Plug 'jceb/vim-orgmode'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'flazz/vim-colorschemes'
Plug 'bronson/vim-trailing-whitespace'
Plug 'leafgarland/typescript-vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'vim-scripts/utl.vim'
Plug 'fatih/vim-go'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'jremmen/vim-ripgrep'
Plug 'AndrewRadev/linediff.vim'
Plug 'junegunn/goyo.vim'

call plug#end()

syntax on
filetype plugin indent on
colorscheme PaperColor
let mapleader = "\<Space>"
let maplocalleader="\<space>"

syntax on
set nu
set autoindent
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set smartindent
set incsearch
set ignorecase
set smartcase
set cursorline
set showmatch
set incsearch
set hlsearch
set wildmenu
set ruler
set guioptions=c

set sidescroll=1
set sidescrolloff=7

set bg=dark
set backspace=indent,eol,start
set laststatus=2
set linebreak
set nobackup
set noerrorbells
set nolist
set noswapfile
set novb
set shortmess=I
set showcmd
set showmode
set undolevels=1000
set foldmethod=syntax
set foldlevelstart=20
set nofixendofline

" Global
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>u :UndotreeToggle<CR>
let g:loaded_logipat = 1

"Airline
let g:airline_theme='tomorrow'
let g:airline_powerline_fonts = 1

"Gvim mods
set encoding=utf-8
set hidden
set history=100
set mouse=a

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=Lo

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Remove all trailing whitespace by pressing F4
noremap <F4> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Inconsolata:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" Map F3 to insert time in orgmode format
nmap <F3> i<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" Mark all org files
let g:org_agenda_files=['~/org/']

" For find selection in visual mode
vnoremap // y/<C-R>"<CR>
vnoremap ?? y?<C-R>"<CR>

let g:go_fmt_command = "goimports"

" Markdown
nmap <C-m> <Plug>MarkdownPreview

noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" For quickfix to open in the last window
" set switchbuf+=uselast
set exrc
set secure

