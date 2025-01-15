return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local telescope = require('telescope')
		local builtin = require('telescope.builtin')
		telescope.setup({})
		vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = 'Telescope live grep' })
	end
}
