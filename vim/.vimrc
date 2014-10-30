set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"#######################################################################
Plugin 'gmarik/Vundle.vim'

"Snippets
Plugin 'garbas/vim-snipmate'
"Shippets dependies
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
"Snippets library
Plugin 'honza/vim-snippets'
"Add second symbol of (['" and other automatically
Plugin 'jiangmiao/auto-pairs'
"Surround selected text any selected symbols
Plugin 'tpope/vim-surround'
"Make working . for surround
Plugin 'tpope/vim-repeat'
"\\f<s> motion, awesome
Plugin 'Lokaltog/vim-easymotion'

"Console in buffer
Plugin 'Shougo/vimshell.vim'
"Console in buffer dependies
Plugin 'Shougo/vimproc.vim'

"Comments 
Plugin 'scrooloose/nerdcommenter'

"Folder presents tree 
Plugin 'scrooloose/nerdtree'

"Auto complete
Plugin 'Valloric/YouCompleteMe'

"Git integration
Plugin 'tpope/vim-fugitive'

"Buffer see
Plugin 'kien/ctrlp.vim'

"Status line
Plugin 'bling/vim-airline'

"xml support
Plugin 'othree/xml.vim'

"#######################################################################
call vundle#end()
filetype plugin indent on  

"Remove preview in Ycm
set completeopt-=preview

"Disable tab Ycm
let g:ycm_key_list_select_completion = []

"NERTTree settings###############################3
"Hotkey
map <C-n> :NERDTreeToggle<CR>
"Ignore files
let NERDTreeIgnore = ['\.pyc$']
"################################################

"CtrlP settings################################################################################

set wildignore+=*.pyc

"################################################################################

"Syntax on
sy on
"Numeration on
set nu
"Tabs settings
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
"Indent after { for samle
set smartindent
"
set mouse=a
"Status bar always visible ?
set laststatus=2
"Highlight search string
set hlsearch
"Auto move to first finded string
set incsearch
"Colorscheme
colorscheme desert

if has('gui_running')
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11
    set guioptions-=T
    set guioptions-=m
    set guioptions-=e
endif

"xml format 
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

"Find local .vimrc files TODO???
set exrc
set secure

"NERD tree auto close after open file
let NERDTreeQuitOnOpen=1
