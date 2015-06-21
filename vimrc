
set nocompatible
set tabstop=8
set shiftwidth=8
set nu
set encoding=utf-8
set scrolloff=3
set autoindent
set cursorline
set t_Co=256 " Colors
set mouse=a
set listchars=tab:⎸\ ,trail:·
set updatetime=100 " ms
set wildmenu " zsh-style autocomplete
set wildmode=list:longest
set laststatus=2


set directory^=$HOME/.vim/swapfile//
set undofile
set undodir^=$HOME/.vim/undofile//


set gdefault   " replace works globaly
set incsearch  " search while typing
set hlsearch   " highlight search-results
set showmatch  " show matching braces

highlight ExtraWhitespace ctermbg=red guibg=red

" Changes the regex-parser
nnoremap / /\v
vnoremap / /\v

" Clear search-results
nnoremap <leader><space> :noh<cr>

"nnoremap <C-PageUp> :bprevious<CR>
"nnoremap <C-PageDown> :bnext<CR>
"nnoremap <C-Tab> :bnext<CR>
"nnoremap <C-S-Tab> :bnext<CR>
nnoremap <C-PageUp> :tabprevious<CR>
nnoremap <C-PageDown> :tabnext<CR>

let mapleader=","

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle

call vundle#begin()
Plugin 'gmarik/vundle'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-pandoc/vim-markdownfootnotes'
Plugin 'vim-pandoc/vim-rmarkdown'
Plugin 'rhysd/vim-clang-format'
Plugin 'scrooloose/syntastic'
Plugin 'sjl/gundo.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/Vim-fugitive'
Plugin 'tommcdo/vim-fugitive-blame-ext'
call vundle#end()

" Plugin-options

let g:syntastic_check_on_open = 1
let g:syntastic_enable_balloons = 1
let g:syntastic_enable_signs = 0
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++1y -stdlib=libc++'
let g:syntastic_python_python_exec = '/path/to/python3'
let g:syntastic_filetype_map = { 'pandoc': 'md'}


let g:clang_format#style_options = {
	\ "BasedOnStyle": "llvm",
	\ "IndentWidth": 8,
	\ "TabWidth": 8,
	\ "ContinuationIndentWidth": 8,
	\ "UseTab": "ForIndentation",
	\ "BreakBeforeBraces": "Attach",
	\ "AlwaysBreakTemplateDeclarations": "true",
	\ "ColumnLimit": 100,
	\ "PointerBindsToType": "true",
	\ "AccessModifierOffset": -8,
	\ "ConstructorInitializerIndentWidth": 8
	\}

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#whitespace#checks = ['indent']


au BufRead,BufNewFile *.md set filetype=markdown

" Switch syntax on:
syntax on
colorscheme slate

