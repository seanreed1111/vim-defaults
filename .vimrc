set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, requiredhttps://github.com/romainl/idiomatic-vimrchttps://github.com/romainl/idiomatic-vimrc
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-abolish'
" abolish usage -- search and replace:%Subvert/facilit{y,ies}/building{,s}/g
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-test/vim-test'
Plugin 'preservim/vim-indent-guides'
"Plugin 'simnalamburt/vim-mundo'
Plugin 'vim-airline/vim-airline'
"Plugin 'preservim/nerdtree'
"gv.vim requires fugitive
Plugin 'junegunn/gv.vim'
Plugin 'junegunn/rainbow_parentheses.vim'
" code folding
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
" syntax highlighting
Plugin 'vim-syntastic/syntastic'
Plugin 'puremourning/vimspector'


" EXAMPLE
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

" EXAMPLE
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set splitbelow
set splitright
"split navigations
"Key combos:
" ctrl plus normal vim movement
"Ctrl+J move to the split below
"Ctrl+K move to the split above
"Ctrl+L move to the split to the right
"Ctrl+H move to the split to the left
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable code folding with za
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
"nnoremap <space> za

" for mundo-Enable persistent undo so that undo history persists across vim sessions
set undofile
set undodir=~/.vim/undo

" add Pep 8 indentation
" source https://realpython.com/vim-and-python-a-match-made-in-heaven/#vim-extensions
"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

" flag unneeded whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8
let g:vimspector_enable_mappings = 'HUMAN'
