scriptencoding utf-8
set ai                  " Always set auto-indenting on
set background=dark     " I like dark terminals
set bs=2                " Allow backspacing over everything in insert mode
set history=50          " keep 50 lines of command history
set laststatus=2        " Show status line always
set nocompatible        " Use Vim defaults (much better!)
set ruler               " Show the cursor position all the time
set viminfo='20,\"500   " Keep a .viminfo file.

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
vnoremap <C-Y> <C-C>:update<CR>
inoremap <C-Y> <C-O>:update<CR>

" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows

" Open a new tab
map <Leader>t <esc>:tabnew<CR>

" Easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
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

" Reload vimrc automaticly after saving
autocmd bufwritepost .vimrc nested source %

" Showing line numbers and length
set number " show line numbers
set tw=79  " width of document
set nowrap " don't automatically wrap on load
set fo-=t  " don't automatically wrap on typing
set colorcolumn=80 
highlight ColorColumn ctermbg=7

" Do copy and paste the way I expect
set pastetoggle=<F2>
"set clipboard=unnamend

" Handle Plugins the easy way
execute pathogen#infect()
syntax on
filetype plugin indent on

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
