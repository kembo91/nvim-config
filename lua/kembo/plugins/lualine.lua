return{
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		require("lualine").setup({
			sections = {
				lualine_c = {
					function()
						local cwd = vim.fn.getcwd()
						local full_path = vim.fn.expand('%:p')
						local relative_path = string.sub(full_path, #cwd + 2)
						return relative_path
					end
				}
			}
		})
	end
}
