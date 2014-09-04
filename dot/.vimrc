filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'rizzatti/funcoo.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'php.vim'
"Plugin 'rainbow_parentheses.vim'
"Plugin 'vim-coffee-script'
Plugin 'vim-less'
"Plugin 'jQuery'
Plugin 'Markdown'
"Plugin 'git.zip'
Plugin 'fugitive.vim'
Plugin 'ragtag.vim'
Plugin 'gmarik/vundle'
Plugin 'css_color.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
"Plugin 'mattn/emmet-vim', {'autoload':{'filetypes':['html','xml','xsl','xslt','xsd','css','sass','scss','less','mustache']}}
Plugin 'tpope/vim-obsession.git'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'bling/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end() " required

filetype plugin indent on " required

colorscheme sorcerer

set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set tabstop=2

set autoread
set autowrite

set backupcopy=yes
set backupdir=$HOME/.vim/backup
set nobackup
set nowritebackup

set directory=~/.vim/swap,~/tmp,.
set noswapfile

set undodir=~/.vim/undo
set undofile
set undoreload=10000

set foldlevel=100
set foldmethod=marker
set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds

set mouse+=a
set mousehide

set visualbell t_vb=
set noerrorbells
set novisualbell

set number
set numberwidth=4
set relativenumber

set showcmd
set showmatch

set hlsearch
set incsearch
set ignorecase
set smartcase

set laststatus=2
set statusline=\%L%m%r%h\ %w\ \ pwd:\ %r%{getcwd()}%h\ \ \ Line:\ %l

set clipboard+=unnamed
set encoding=utf-8
set guifont=Bitstream\ Vera\ Sans\ Mono\ 10
set hidden
set history=256
set matchtime=5
set modeline
set nowrap
set report=0
set shell=bash
set shortmess=atI
set syntax=on
set timeoutlen=250
set wildmenu

" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
let mapleader = "\<Space>"

" visual mode
nnoremap v     <C-V>
nnoremap <C-V> v
xnoremap v     <C-V>
xnoremap <C-V> v

" drag visual block
xnoremap <C-K> xkP`[V`]
xnoremap <C-J> xp`[V`]
xnoremap <C-L> >gv
xnoremap <C-H> <gv

" H and L to beginning and end of line
noremap K H
noremap J L
" H and L to beginning and end of line
noremap H ^
noremap L g_

" disable arrow keys
nnoremap <up>    <NOP>
nnoremap <down>  <NOP>
nnoremap <right> <NOP>
nnoremap <left>  <NOP>
inoremap <up>    <NOP>
inoremap <down>  <NOP>
inoremap <right> <NOP>
inoremap <left>  <NOP>

" hit Enter to go to end of file.
nnoremap <CR> G
" hit Backspace to go to beginning of file.
nnoremap <BS> gg

" type <Space>w to save file (lot faster than :w<Enter>):
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>s :wq<CR>
nnoremap <Leader>v V

" automatically jump to end of text you pasted:
" i can paste multiple lines multiple times with simple ppppp.
xnoremap <silent> y y`]
xnoremap <silent> p p`]
nnoremap <silent> p p`]

" manage tab pages
nnoremap tt :tabedit<Space>
nnoremap Z  :tabprev<CR>
nnoremap X  :tabnext<CR>

" scrolling
nnoremap <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>
nnoremap <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>
" pasting
nnoremap <leader>p :set paste<CR>"*p<CR>:set nopaste<CR>
nnoremap <leader>P :set paste<CR>"*P<CR>:set nopaste<CR>

" clean whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

augroup ShowMode
    autocmd!
    autocmd InsertLeave * hi Cursor guibg=red
    autocmd InsertEnter * hi Cursor guibg=green
augroup END

augroup Automatic
    autocmd!
    " automatically jump to last known position in a file
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
    " automatically reload vimrc when it's saved
    autocmd BufWritePost ~/.vimrc source %
augroup END

" nerdtree
let NERDTreeShowBookmarks = 1
let NERDTreeWinSize       = 52
let NERDTreeShowHidden    = 1
nnoremap <silent> n :NERDTreeToggle<CR>

" powerline
let g:Powerline_symbols = 'fancy'

" emmet
"let g:user_emmet_leader_key = '<c-y>'

" syntastic
let g:syntastic_enable_signs       = 1
let g:syntastic_auto_loc_list      = 1
let g:syntastic_disabled_filetypes = ['html', 'sass', 'less']
let g:syntastic_stl_format         = '[%E{Error 1/%e: line %fe}%B{, }%W{Warning 1/%w: line %fw}]'
let g:syntastic_jsl_conf           = '$HOME/.jshintrc'
let g:syntastic_jshint_conf        = '$HOME/.jshintrc'
