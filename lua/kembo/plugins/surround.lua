return {
	'echasnovski/mini.surround',
	config = function()
		require("mini.surround").setup({
			mappings = {
				add = 'ra', -- Add surrounding in Normal and Visual modes
				delete = 'rd', -- Delete surrounding
				find = 'rf', -- Find surrounding (to the right)
				find_left = 'rF', -- Find surrounding (to the left)
				highlight = 'rh', -- Highlight surrounding
				replace = 'rr', -- Replace surrounding
				update_n_lines = 'rn', -- Update `n_lines`

				suffix_last = 'l', -- Suffix to search with "prev" method
				suffix_next = 'n', -- Suffix to search with "next" method
			}
		})
	end
}
