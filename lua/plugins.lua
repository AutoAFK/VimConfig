return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use 'ray-x/starry.nvim'
	use 'echasnovski/mini.nvim'
	use {
	    "williamboman/mason.nvim",
	    "williamboman/mason-lspconfig.nvim",
	    "neovim/nvim-lspconfig",
	}
	use 'ray-x/go.nvim'
	use 'ray-x/guihua.lua' -- recommanded if need floating window support
end)
