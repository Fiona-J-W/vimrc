vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'neovim/nvim-lspconfig'
	use 'bling/vim-airline'
	use 'cdelledonne/vim-cmake'
	use 'rhysd/vim-clang-format'
	use 'tell-k/vim-autopep8'
	use 'tpope/Vim-fugitive'
	use 'simnalamburt/vim-mundo'
	use 'wookayin/semshi'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
	use 'vim-pandoc/vim-pandoc-syntax'
end)
