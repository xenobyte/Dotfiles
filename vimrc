scriptencoding utf-8
set nocompatible        " Use Vim defaults (much better!)
set bs=2                " Allow backspacing over everything in insert mode
set ai                  " Always set auto-indenting on
set history=50          " keep 50 lines of command history
set ruler               " Show the cursor position all the time
set background=dark	    " I like dark terminals
set viminfo='20,\"500   " Keep a .viminfo file.
set laststatus=2        " Show status line always
set ruler
set number

" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","

" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Quicksave command
noremap <C-Y> :update<CR>
vnoremap <C-Y> <C-C>:update<CR>
inoremap <C-Y> <C-O>:update<CR>

" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows

" Bind Ctrl+<movement> keys to move around the windows, instead of using 
" Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

" Open a new tab
map <Leader>t <esc>:tabnew<CR>

" Easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Nice sort function
map sort function to a key
vnoremap <Leader>s :sort<CR>

" Easier formatting of paragraphs
vmap Q gq
nmap Q gqap

" I REALLY hate those vim backup files
set nobackup
set nowritebackup
set noswapfile

" Reload vimrc automaticly after saving
autocmd! bufwritepost .vimrc source %

" Showing line numbers and length
set number " show line numbers
set tw=79  " width of document
set nowrap " don't automatically wrap on load
set fo-=t  " don't automatically wrap on typing
set colorcolumn=80 
"set ColorColumn ctermbg=233

" Do copy and paste the way I expect
set pastetoggle=<F2>
"set clipboard=unnamend

" Handle Plugins the easy way
execute pathogen#infect()
syntax on
filetype plugin indent on

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

"Set color scheme
set t_Co=256
color wombat256mod

" vim: set fenc=utf-8 tw=80 sw=2 sts=2 et foldmethod=marker :
