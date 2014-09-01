set guifont=Bitstream\ Vera\ Sans\ Mono\ 10
"colorscheme desert 
colorscheme sorcerer
au InsertLeave * hi Cursor guibg=red
au InsertEnter * hi Cursor guibg=green

" sparkup: https://github.com/rstacruz/sparkup/issues/33
" augroup sparkup_types
"   " Remove ALL autocommands of the current group.
"   autocmd!
"   " Add sparkup to new filetypes
"   autocmd FileType mustache,php,htmldjango runtime! ftplugin/html/sparkup.vim
" augroup END

" couleur de theme par fichier
"execute pathogen#infect()
set syntax=on
set encoding=utf-8

""====[ Make the 101st column stand out ]==================[ Make the 101st column stand out ]==============
" Asesome 80-character limiter
"execute "set colorcolumn=" . join(range(101,101), ',')
"hi ColorColumn guibg=#ffffff ctermbg=235

"highlight ColorColumn ctermbg=yellow ctermfg=blue
"set colorcolumn=101
"exec 'set colorcolumn=' .join(range(2,80,3), ',')
"highlight ColorColumn ctermbg=magenta
"call matchadd('ColorColumn', '\%101v', 100)

" This mapping sorts the CSS lines within a {} block. Thanks to sjl from #vim
"map S ?{jV/\v^\s*\}?$k:sort:noh
"function SortCss()
"   for i in range(line("1"), line("$"))
"       exe "/{"
"       exe "silent! normal j,S"
"   endfor
"endfunction

" visual mode
  nnoremap v <C-V>
  nnoremap <C-V> v
  vnoremap v <C-V>
  vnoremap <C-V> v

"drag visual block
  vnoremap <C-K> xkP`[V`]
  vnoremap <C-J> xp`[V`]
  vnoremap <C-L> >gv 
  vnoremap <C-H> <gv

"====[ Make tabs, trailing whitespace, and non-breaking spaces visible ]======
"  exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
"  set list

"let g:EasyMotion_leader_key = '<Leader><Leader>'

set shell=bash
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
set history=256  " Number of things to remember in history. 
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set smarttab
set wrap
set showbreak=>
"set relativenumber
set nobackup
set nowritebackup
set noswapfile
set backupdir=$HOME/.vim/backup
set backupcopy=yes
set directory=~/.vim/swap,~/tmp,.      " keep swp files under ~/.vim/swap
set undofile
set undodir=~/.vim/undo
set undoreload=10000
set numberwidth=4
set wildmenu
"use the mouse
set mouse+=a
set clipboard+=unnamed
set showmatch
set nowrap
set showcmd
set ruler
set number
set hidden
set modeline
set autoread
set nocompatible
set report=0
set nofoldenable
set autowrite
set showmatch  " Show matching brackets.
set matchtime=5  " Bracket blinking.
set novisualbell  " No blinking
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
set vb t_vb= " disable any beeps or flashes on error
set ruler  " Show ruler
set showcmd " Display an incomplete command in the lower right corner of the Vim window
set shortmess=atI " Shortens messages
set foldenable " Turn on folding
set foldmethod=marker " Fold on the marker
set foldlevel=100 " Don't autofold anything (but I can still fold manually)
set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds 
set mousehide  " Hide mouse after chars typed 

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.*/

"raccourcis pour tabedit
nnoremap tt  :tabedit<Space>

"Styling
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces
"
"Search
set hlsearch  " highlight search
set incsearch
set ignorecase
set smartcase

"=====[ Highlight matches when jumping to next ]=============
"nnoremap <silent> n n:call HLNext(0.4)<cr>
"nnoremap <silent> N N:call HLNext(0.4)<cr>

"=====[ Highlight the match in red ]=============
"   function! HLNext (blinktime)
"       let [bufnum, lnum, col, off] = getpos('.')
"       let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
"       let target_pat = '\c\%#'.@/
"       let ring = matchadd('WhiteOnRed', target_pat, 101)
"       redraw
"       exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
"       call matchdelete(ring)
"       redraw
"   endfunction

"Status Line
set laststatus=2
set statusline=\%L%m%r%h\ %w\ \ pwd:\ %r%{getcwd()}%h\ \ \ Line:\ %l

"Scrolling
:map <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>
:map <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>

"Pasting
noremap <leader>p :set paste<CR>"*p<CR>:set nopaste<CR>
noremap <leader>P :set paste<CR>"*P<CR>:set nopaste<CR>

"Key Mapping
:nmap Z :tabprev<CR>
:nmap X :tabnext<CR>

au BufRead,BufNewFile *.module set filetype=php
au BufRead,BufNewFile *.install set filetype=php
au BufRead,BufNewFile *.test set filetype=php
au BufRead,BufNewFile *.inc set filetype=php
au BufRead,BufNewFile *.profile set filetype=php
au BufRead,BufNewFile *.view set filetype=php
au BufNewFile,BufRead *.less set filetype=css
au BufNewFile,BufRead *.html set filetype=html
au BufNewFile,BufRead *.css set filetype=css
au BufRead,BufNewFile *.js set ft=javascript syntax=javascript
au BufRead,BufNewFile *.json set ft=json syntax=javascript
au BufRead,BufNewFile *.twig set ft=htmldjango
au BufRead,BufNewFile *.rabl set ft=ruby

"Syntastic
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list=1
let g:syntastic_disabled_filetypes = ['html', 'sass', 'less']
let g:syntastic_stl_format = '[%E{Error 1/%e: line %fe}%B{, }%W{Warning 1/%w: line %fw}]'
let g:syntastic_jsl_conf = '$HOME/.jshintrc'
let g:syntastic_jshint_conf = '$HOME/.jshintrc'

" automatically jump to last known position in a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

" Clean whitespace
noremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" NEERDTree
let NERDTreeShowBookmarks=1
let NERDTreeWinSize=52
let NERDTreeShowHidden=1
nmap <silent> <n> :NERDTreeToggle<CR>

" H and L to beginning and end of line
noremap K H
noremap J L

" H and L to beginning and end of line
noremap H ^
noremap L g_

" Disable arrow keys
noremap <up> <NOP>
noremap <down> <NOP>
noremap <right> <NOP>
noremap <left> <NOP>
inoremap <up> <NOP>
inoremap <down> <NOP>
inoremap <right> <NOP>
inoremap <left> <NOP>

" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
let mapleader = "\<Space>"

"Hit Enter to go to end of file.
nnoremap <CR> G
"Hit Backspace to go to beginning of file.
nnoremap <BS> gg
"Type <Space>w to save file (lot faster than :w<Enter>):
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>s :wq<CR>
nnoremap <Leader>v V

"Copy & paste to system clipboard with <Space>p and <Space>y:
"vmap <Leader>y "+y
"vmap <Leader>d "+d
"nmap <Leader>p "+p
"nmap <Leader>P "+P
"vmap <Leader>p "+p
"vmap <Leader>P "+P

"Automatically jump to end of text you pasted:
"I can paste multiple lines multiple times with simple ppppp.
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" powerline plugin
let g:Powerline_symbols = 'fancy'

filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'php.vim'
"Bundle 'rainbow_parentheses.vim'
"Bundle 'vim-coffee-script'
Bundle 'vim-less'
"Bundle 'jQuery'
Bundle "Markdown"
"Bundle "git.zip"
Bundle "fugitive.vim"
Bundle "ragtag.vim"
Bundle 'gmarik/vundle'
Bundle 'css_color.vim'
Bundle "MarcWeber/vim-addon-mw-utils"
"Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle 'mattn/emmet-vim', {'autoload':{'filetypes':['html','xml','xsl','xslt','xsd','css','sass','scss','less','mustache']}} 
Bundle 'tpope/vim-obsession.git'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:user_emmet_leader_key='<c-y>'
