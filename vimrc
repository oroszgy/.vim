set number
filetype indent plugin on

let mapleader=","

set modeline
set tabstop=4
set softtabstop=4
set showmatch

set nocompatible
" set backspace=2
set backspace=indent,eol,start
" set spell spelllang=en_us

set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

set foldenable
set foldlevelstart=99
set foldnestmax=10
set foldmethod=indent
nnoremap <space> za

set lazyredraw
set wildmenu
set ruler
set laststatus=2
" set display+=lastline

set encoding=utf-8

" Changing the cursor shape
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'

Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'

Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'

Plug 'kien/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'tomasr/molokai'
Plug 'itchyny/lightline.vim'

Plug 'editorconfig/editorconfig-vim'

Plug 'scrooloose/syntastic'
Plug 'klen/python-mode'
Plug 'tpope/vim-fugitive'
Plug 'cjrh/vim-conda'

Plug 'rizzatti/dash.vim'
Plug 'vim-scripts/netrw.vim'

Plug 'mhinz/vim-startify'
Plug 'goerz/ipynb_notedown.vim'
call plug#end()

" Plugin settings
map <C-n> :NERDTreeToggle<CR>
colorscheme molokai
set noshowmode

nmap <silent> <leader>D <Plug>DashSearch

let g:pymode_rope_autoimport = 0
let g:pymode_rope_completion_bind = '<C-Space>'
let g:pymode_options_max_line_length = 120
let g:pymode_lint_on_fly = 1

map <F4> :CondaChangeEnv<CR>
