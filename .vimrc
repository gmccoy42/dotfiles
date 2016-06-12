set number
set shell=/bin/bash

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

<<<<<<< HEAD
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
call vundle#end()

set encoding=utf-8

" Powerline
let $PYTHONPATH='/usr/lib/python3.5/site-packages'
set laststatus=2

" Python indents and spacing
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

syntax enable
filetype plugin indent on

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

"Search colour
highlight Search ctermfg=black ctermbg=yellow

" Highlight all search matches
set hlsearch

" Ctrl-n Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Strip whitespace
autocmd BufWritePre * StripWhitespace
=======
"Background Colour
highlight Normal ctermfg=grey ctermbg=black

"Bracket highlight colour
highlight MatchParen cterm=bold ctermbg=black ctermfg=green

"Pydocstring
let g:template_vim_template_dir = '~/.vim_runtime/docstring/'
let g:pydocstring_templates_dir = '/home/ubuntu/.vim_runtime/docstring/'

:nnoremap <silent> [<space> :pu! _<cr>:']+1<cr>
:nnoremap <silent> ]<space> :pu _<cr>:'[-1<cr>
try
source ~/.vim_runtime/my_configs.vim
catch
endtry

command Scom :normal i{% comment %}<ESC>
command Ecom :normal i{% endcomment %}<ESC>
>>>>>>> eb4e8b411c0277b635f2f2af524b19a54bfdfaa9
