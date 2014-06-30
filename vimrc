scriptencoding utf-8
set ai                  " Always set auto-indenting on
set background=dark     " I like dark terminals
set bs=2                " Allow backspacing over everything in insert mode
set history=50          " keep 50 lines of command history
set laststatus=2        " Show status line always
set nocompatible        " Use Vim defaults (much better!)
set ruler               " Show the cursor position all the time
set viminfo='20,\"500   " Keep a .viminfo file.
filetype off

"
" Handle plugins with Vundle
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" I like this powerline
Bundle 'Lokaltog/powerline'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Rebind <Leader> key
" I like to have it here because it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","

" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap  <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Quicksave command 
noremap  <C-Y> :update<CR>
vnoremap <C-Y> <esc>:update<CR>
inoremap <C-Y> <esc>:update<CR>

" Undo with Ctrl+z
noremap  <C-z> :u<CR>
vnoremap <C-z> <C-C>:u<CR>
inoremap <C-z> <C-O>:u<CR>

" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows

" Open a new tab
map <C-t> <esc>:tabnew<CR>

" Close a tab
map <C-w> <esc>:close<CR>

" Easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" easier moving of code blocks Try to go into visual mode (v), thenselect
" several lines of code here and then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Nice sort function
map sort function to a key
vnoremap <Leader>s :sort<CR>

" Easier formatting of paragraphs
vmap Q gq
nmap Q gqap

" I REALLY hate those vim backup files
set nobackup
set noswapfile
set nowritebackup

" search options
set hlsearch        " highlight results
set incsearch       " search as you type
set ignorecase      " case insensitive
set smartcase       " if search contains upper case letters, search case sensitive

" Reload vimrc automaticly after saving
autocmd bufwritepost .vimrc nested source %

" Reload files if changed outside of vim
set autoread

" special characters in powerline
let g:Powerline_stl_path_style = 'filename'

" Showing line numbers and length
set number " show line numbers
set tw=79  " width of document
set nowrap " don't automatically wrap on load
set fo-=t  " don't automatically wrap on typing
" set colorcolumn=80 
" highlight ColorColumn ctermbg=7

" Do copy and paste the way I expect
set pastetoggle=<F2>
"set clipboard=unnamend

" Real programmers don't use TABs but spaces
set expandtab
set shiftround
set shiftwidth=4
set softtabstop=4
set tabstop=4

"Set color scheme
set t_Co=256
color wombat256mod

" vim: set fenc=utf-8 tw=80 sw=2 sts=2 et foldmethod=marker :
