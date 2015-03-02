set nocompatible

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
endif


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()

syntax enable
set background=dark

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" allow backspacing over everything in insert mode
set backspace=indent,eol,start


" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" swp files are annoying. Let's hope vim doesn't crash
set nobackup
set nowritebackup
set noswapfile


" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set list listchars=tab:\ \ ,trail:·

set number
set ruler
syntax on
" Using Control + s to save a file in addition to :w
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

" Move between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap j gj
nnoremap k gk


nmap \i :set paste!<cr>

nmap \n :set nu!<cr>

nmap \q :nohlsearch<CR>

nmap \t :NERDTreeToggle<CR>



 " let Vundle manage Vundle
 " required! 
   Bundle 'gmarik/vundle'



 " My Bundles here:
 "
 " original repos on github
   Bundle 'tpope/vim-fugitive'
   Bundle 'Lokaltog/vim-easymotion'
 " Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
   Bundle 'tpope/vim-rails.git'
   Bundle 'vim-scripts/taglist.vim'
   Bundle 'scrooloose/nerdtree'
 " vim-scripts repos
 " Bundle 'L9'
 " Bundle 'FuzzyFinder'
 " non github repos
 " Bundle 'git://git.wincent.com/command-t.git'
 " ...

 " Bundle 'Valloric/YouCompleteMe.git'
 

 colorscheme elflord

 " Mark down support
 " Create or edit file under cursor
 Bundle 'plasticboy/vim-markdown'

 nmap mf :tabe <cfile>.md<CR>


 " File type association

 autocmd BufNewFile,BufReadPost *.md set filetype=markdown

 " Autoclosing tags
 "inoremap {      {}<Left>
 "inoremap do      do<CR>end<ESC>O
 "inoremap {<CR>  {<CR>}<Esc>O
 "inoremap {{     {
 "inoremap {}     {}

 Bundle 'Townk/vim-autoclose'
 " Programming Support
 au BufNewFile *.c r ~/.vim/startingC.c

 Bundle 'scrooloose/syntastic'

 
 " Da looks
 Bundle 'Lokaltog/powerline'
 Bundle 'adragomir/javacomplete'

