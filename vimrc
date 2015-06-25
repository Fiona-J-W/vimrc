
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

let mapleader=","


set directory^=$HOME/.vim/swapfile//
set undofile
set undodir^=$HOME/.vim/undofile//


set gdefault   " replace works globaly
set incsearch  " search while typing
set hlsearch   " highlight search-results
set showmatch  " show matching braces


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


set listchars=tab:⎸\ ,trail:·
set list


" Vundle
filetype off
filetype plugin indent on
set rtp+=~/.vim/bundle/vundle

call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-pandoc/vim-markdownfootnotes'
Plugin 'vim-pandoc/vim-rmarkdown'
Plugin 'rhysd/vim-clang-format'
Plugin 'sjl/gundo.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/Vim-fugitive'
Plugin 'tommcdo/vim-fugitive-blame-ext'
Plugin 'taglist.vim'
call vundle#end()

" Plugin-options


let g:ycm_global_ycm_extra_conf = '~/.config/ycm/.ycm_extra_conf.py'
let g:ycm_extra_conf_globlist = ['~/entwicklung/c++/*', '~/Studium/*', '~/entwicklung/test/*', '/tmp/*']
set completeopt-=preview
let g:ycm_add_preview_to_completeopt=0
let g:ycm_enable_diagnostic_signs = 0
nnoremap <leader>t :YcmCompleter GetType<cr>

let g:pandoc#modules#disabled = ["folding", "spell"]
let g:pandoc#command#latex_engine= "pdflatex"
let g:pandoc#syntax#codeblocks#embeds#langs = ["haskell", "literatehaskell=lhaskell", "cpp", "java"]
let g:pandoc#syntax#conceal#blacklist = ["codeblock_start", "codeblock_delim"]


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
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_close_button = 0

let Tlist_Exit_OnlyWindow = 1
let Tlist_WinWidth = 50
nnoremap <leader>l :Tlist<cr>

au BufRead,BufNewFile *.md set filetype=markdown

" Switch syntax on:
syntax on
colorscheme slate

