set nocompatible
filetype off

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
endif


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 " let Vundle manage Vundle
 " required! 
   Plugin 'VundleVim/Vundle.vim'



 " My Plugins here:
 "
 " original repos on github
   Plugin 'tpope/vim-fugitive'
   Plugin 'Lokaltog/vim-easymotion'
 " Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
   Plugin 'tpope/vim-rails.git'
   Plugin 'vim-scripts/taglist.vim'
   Plugin 'scrooloose/nerdtree'
   Plugin 'scrooloose/syntastic'
   Plugin 'Townk/vim-autoclose'

 
 " Da looks
   Plugin 'Lokaltog/powerline'
   Plugin 'adragomir/javacomplete'
 " vim-scripts repos
 " Plugin 'L9'
 " Plugin 'FuzzyFinder'
 " non github repos
 " Plugin 'git://git.wincent.com/command-t.git'
 " ...

 " Plugin 'Valloric/YouCompleteMe.git'
 

call vundle#end()            " required
" load the plugin and indent settings for the detected filetype
filetype plugin indent on

syntax enable
set background=dark

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" allow backspacing over everything in insert mode
set backspace=indent,eol,start



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




 colorscheme elflord

 " Mark down support
 " Create or edit file under cursor
 Plugin 'plasticboy/vim-markdown'

 nmap mf :tabe <cfile>.md<CR>


 " File type association

 autocmd BufNewFile,BufReadPost *.md set filetype=markdown

 " Autoclosing tags
 "inoremap {      {}<Left>
 "inoremap do      do<CR>end<ESC>O
 "inoremap {<CR>  {<CR>}<Esc>O
 "inoremap {{     {
 "inoremap {}     {}

 " Programming Support
 au BufNewFile *.c r ~/.vim/startingC.c

