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

"Checker
Plugin 'scrooloose/syntastic'

"trailing whitespace
Plugin 'bronson/vim-trailing-whitespace'

"python syntax
Plugin 'python.vim'

"scala
Plugin 'derekwyatt/vim-scala'

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
"
set ignorecase
set smartcase
"Colorscheme
colorscheme desert

if has('gui_running')
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11
    set guioptions-=T
    set guioptions-=m
    "set guioptions-=e
endif

"xml format
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
au FileType json setlocal equalprg=python\ -m\ json.tool\ 2>/dev/null

"Find local .vimrc files TODO???
set exrc
set secure

"NERD tree auto close after open file
let NERDTreeQuitOnOpen=1

"For airline symbols
let g:airline_powerline_fonts = 1

"Airline tabs
" Enable the list of buffers
"let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"select tabs
map <M-1> 1gt
map <M-2> 2gt
map <M-3> 3gt
map <M-4> 4gt
map <M-5> 5gt
map <M-6> 6gt
map <M-7> 7gt
map <M-8> 8gt
map <M-9> 9gt

"file format, kill ^M
set ffs=unix,dos

"auto reread when file was changed
set autoread

"highlight word after double click
nnoremap <silent> <2-LeftMouse> :let @/='\V\<'.escape(expand('<cword>'), '\').'\>'<cr>:set hls<cr>

"auto wrap when diff
autocmd FilterWritePre * if &diff | setlocal wrap< | endif

"solid divider
"set fillchars=stl:\ ,stlnc:\ ,vert:│

"autoreload .vimrc
autocmd! bufwritepost .vimrc source %

"set pastetoggle=<F2>
"set clipboard=unnamed

"set bs=2

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"vnoremap < <gv
"vnoremap > >gv

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

"test
nnoremap <S-h> gT
nnoremap <S-l> gt
