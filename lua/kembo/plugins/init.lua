return {
	"nvim-lua/plenary.nvim",
	"christoomey/vim-tmux-navigator",
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		config = true
	},
	{
		'stevearc/dressing.nvim',
		opts = {},
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	}
}
