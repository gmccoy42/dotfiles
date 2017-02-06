set number
set shell=/bin/bash

"Colour fix
set t_Co=256

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" HTML tag matcher
Plugin 'Valloric/MatchTagAlways'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Code completion
"Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'

"NERDTree
Plugin 'scrooloose/nerdTree'

" Github plugin
Plugin 'tpope/vim-fugitive'

" Whitespace clean
Plugin 'ntpeters/vim-better-whitespace'

"flake8
Plugin 'nvie/vim-flake8'

" colorscheme
Plugin 'w0ng/vim-hybrid'

" HTML tag matching
Plugin 'matchit.zip'
Plugin 'MatchTag'

" Powerline
Plugin 'powerline/powerline'

" Jquery syntax
Plugin 'itspriddle/vim-jquery'

" YAML
Plugin 'stephpy/vim-yaml'

" Colour preview
Plugin 'ap/vim-css-color'

" Emmet vim
Plugin 'mattn/emmet-vim'

call vundle#end()

set encoding=utf-8

" Disable preview window for jedi
set completeopt-=preview

" Powerline
let $PYTHONPATH='/usr/lib/python3.5/site-packages'
set laststatus=2

" Python indents and spacing
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4

syntax enable
filetype plugin indent on

autocmd Filetype python setlocal ts=4 sw=4 expandtab
autocmd Filetype python setlocal cc=80
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype htmldjango setlocal ts=2 sts=2 sw=2 expandtab

" Highlight 80th in python files for PEP80

set wildmenu

" :e tab completion
set wildmode=full

" jj to esc mapping
:imap jj <Esc>

colorscheme hybrid
highlight Normal ctermfg=grey ctermbg=black

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Highlight current line
set cursorline

"Bracket highlight colour
highlight MatchParen cterm=bold ctermbg=black ctermfg=green

" HTML MatchTag allows changing options
let g:mta_use_matchparen_group = 0
let g:mta_set_default_matchtag_color = 0

" map emmet trigger to ,,
let g:user_emmet_leader_key=','

" HTML Tag match colour
highlight MatchTag ctermfg=green

"Search colour
highlight Search ctermfg=black ctermbg=yellow

" Highlight all search matches
set hlsearch

" Ctrl-n Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" HTML shortcuts
com Row :normal i<div class="row"><ESC>o</div>
com Cola :normal i<div class="col-md-8 col-md-offset-2"><ESC>o</div>
com Colb :normal i<div class="col-md-12"><ESC>o</div>
com Ediv :normal i</div><ESC>
com Submit :normal i<button type="submit" class="btn btn-primary">Submit</button><ESC>o

" Strip whitespace
autocmd BufWritePre * StripWhitespace

"256 colours
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif


" Set paste
set pastetoggle=<F2>
