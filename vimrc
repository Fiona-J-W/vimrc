
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
set cinoptions=g0N-s " don't indent namespace and public/private

let mapleader=" "


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
nnoremap <leader>/ :noh<cr>

nnoremap <C-PageUp> :bprevious!<CR>
nnoremap <C-PageDown> :bnext!<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <C-S-Down> <C-W><C-J>
nnoremap <C-S-Up> <C-W><C-K>
nnoremap <C-S-Right> <C-W><C-L>
nnoremap <C-S-Left> <C-W><C-H>

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
Plugin 'rhysd/vim-clang-format'
Plugin 'sjl/gundo.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/Vim-fugitive'
Plugin 'tommcdo/vim-fugitive-blame-ext'
Plugin 'taglist.vim'
Plugin 'mileszs/ack.vim'
Plugin 'Florianjw/vim-cbuild'
Plugin 'vim-scripts/Conque-GDB'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
call vundle#end()

" Plugin-options


let g:ycm_global_ycm_extra_conf = '~/.config/ycm/.ycm_extra_conf.py'
let g:ycm_extra_conf_globlist = ['~/Entwicklung/c++/*', '~/Studium/*', '~/Entwicklung/test/*', '/tmp/*']
set completeopt-=preview
let g:ycm_add_preview_to_completeopt=0
let g:ycm_enable_diagnostic_signs = 0

let g:pandoc#modules#disabled = ["folding", "spell"]
let g:pandoc#command#latex_engine= "pdflatex"
let g:pandoc#syntax#codeblocks#embeds#langs = ["haskell", "literatehaskell=lhaskell", "cpp", "java"]
let g:pandoc#syntax#conceal#blacklist = ["codeblock_start", "codeblock_delim"]

let g:ConqueGdb_Leader = ','

let g:clang_format#command = 'clang-format-3.5'
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
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1

let g:airline_powerline_fonts = 1

let Tlist_Exit_OnlyWindow = 1
let Tlist_WinWidth = 50

let g:ackprg = 'ag --vimgrep'

let g:cbuild_default_build_type = "release"

nnoremap <leader>t :YcmCompleter GetType<cr>
nnoremap <leader>g :YcmCompleter GoTo<cr>
nnoremap <leader>l :Tlist<cr>
nnoremap <leader>u :GundoToggle<cr>
nnoremap <leader>b :Gblame<cr>
nnoremap <leader>e :Explore<cr>
nnoremap <leader>f :ClangFormat<cr>
nnoremap <leader>m <C-W>_
nnoremap <leader>ct :let g:cbuild_default_build_type=""<Left>
nnoremap <leader>cb :CBuild<cr>
nnoremap <leader>d :ConqueGdb 


nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>q :bd<cr>

au BufRead,BufNewFile *.md set filetype=markdown

" Switch syntax on:
syntax on
colorscheme slate

