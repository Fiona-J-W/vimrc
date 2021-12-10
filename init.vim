
set tabstop=8
set shiftwidth=8
set nu
set encoding=utf-8
set scrolloff=3
set autoindent
set cursorline
set t_Co=256 " Colors
set mouse=a
set updatetime=100 " ms
set wildmenu " zsh-style autocomplete
set wildmode=list:longest
set laststatus=2
set cinoptions=g0N-s " don't indent namespace and public/private
set noerrorbells visualbell t_vb=
set signcolumn=yes
set clipboard+=unnamedplus


let mapleader=" "


set undofile
set undodir^=$HOME/.local/share/nvim/undofile//


set gdefault   " replace works globaly
set incsearch  " search while typing
set hlsearch   " highlight search-results
set showmatch  " show matching braces


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

set listchars=tab:⤑\ ,trail:·,nbsp:␣
set list

set runtimepath+=~/.local/share/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.local/share/nvim/dein')
	call dein#begin('~/.local/share/nvim/dein')
		call dein#add('~/.local/share/nvim/dein/repos/github.com/Shougo/dein.vim')
		call dein#add('neovim/nvim-lspconfig')
		call dein#add('bling/vim-airline')
		call dein#add('cdelledonne/vim-cmake')
		call dein#add('rhysd/vim-clang-format')
		call dein#add('Shougo/deoplete.nvim')
		call dein#add('tpope/Vim-fugitive')
		call dein#add('simnalamburt/vim-mundo')
		call dein#add('numirias/semshi')
		call dein#add('vim-pandoc/vim-pandoc-syntax')
		call dein#add('lukas-reineke/indent-blankline.nvim')
	call dein#end()
	call dein#save_state()
endif
filetype plugin indent on
syntax enable


lua require'lspconfig'.clangd.setup{}
lua require'lspconfig'.texlab.setup{}

let g:clang_format#command = 'clang-format'
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

let g:cmake_build_dir_location='build'
let g:cmake_link_compile_commands=1
augroup vim-cmake-group
	autocmd! User CMakeBuildSucceeded CMakeClose
augroup END

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1

let g:pandoc#syntax#conceal#use = 0

let g:indent_blankline_char = '▍'
let g:indent_blankline_max_indent_increase = 1
let g:indent_blankline_show_trailing_blankline_indent = v:false
let g:indent_blankline_strict_tabs = v:true

let g:deoplete#enable_at_startup = 1

nnoremap <leader>r :Semshi rename 
nnoremap <leader>se :Semshi error<cr>
nnoremap <leader>sg :Semshi goto error<cr>
nnoremap <leader>u :MundoToggle<cr>
nnoremap <leader>b :Git blame<cr>
nnoremap <leader>e :Explore<cr>
nnoremap <leader>f :ClangFormat<cr>
nnoremap <leader>cs :CMakeSwitch <Left>
nnoremap <leader>cb :CMakeBuild<cr>
nnoremap <leader>mk :make!<cr>


nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
map <C-Left> <Plug>AirlineSelectPrevTab
nmap <leader>[ <Plug>AirlineSelectPrevTab
map <C-Right> <Plug>AirlineSelectNextTab
nmap <leader>] <Plug>AirlineSelectNextTab
nmap <leader>q :bd<cr>

au BufRead,BufNewFile *.md set filetype=markdown.pandoc

