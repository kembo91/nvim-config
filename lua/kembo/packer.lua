-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use {
	"NeogitOrg/neogit",
	requires= {
			"nvim-lua/plenary.nvim",         -- required
			"sindrets/diffview.nvim",        -- optional - Diff integration

			-- Only one of these is needed.
			"nvim-telescope/telescope.nvim", -- optional
		},
	}
	use {'vim-test/vim-test',
		requires = {'kassio/neoterm'}
	}
	use "lukas-reineke/indent-blankline.nvim"
	use {'stevearc/dressing.nvim'}
	use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons'}
	}
	use {
		'alexghergh/nvim-tmux-navigation',
	}
	use {
	"vinnymeller/swagger-preview.nvim",
	run = "npm i",
	}
	use 'wbthomason/packer.nvim'
	use {
		  'nvim-telescope/telescope.nvim', tag = '0.1.8',
		  requires = { {'nvim-lua/plenary.nvim'} }
	}
	use { "catppuccin/nvim", as = "catppuccin" }
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use({'neovim/nvim-lspconfig'})
	use 'ray-x/go.nvim'
	use 'ray-x/guihua.lua'
	use({'hrsh7th/nvim-cmp'})
	use({'hrsh7th/cmp-nvim-lsp'})
	use('darrikonn/vim-gofmt', {run='GoUpdateBinaries'})
	use('rstacruz/vim-closer')
	use{
		'mfussenegger/nvim-dap',
		requires = {
			"leoluz/nvim-dap-go",			
			"rcarriga/nvim-dap-ui",
			"thehamsta/nvim-dap-virtual-text",
			"nvim-neotest/nvim-nio",
			"williamboman/mason.nvim"
		}
	}
	use('nvim-tree/nvim-tree.lua')
	use('tpope/vim-fugitive')
	use {
	  'lewis6991/gitsigns.nvim',
	  config = function()
	    require('gitsigns').setup()
	  end
	}
	use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
	use {
	    "ThePrimeagen/harpoon",
	    branch = "harpoon2",
	    requires = { {"nvim-lua/plenary.nvim"}, {"nvim-telescope/telescope.nvim", tag="0.1.8"} }
	}
end)
