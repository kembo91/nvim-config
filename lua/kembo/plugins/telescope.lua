return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim', {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'}},
	config = function()
		local telescope = require('telescope')
		local builtin = require('telescope.builtin')
		telescope.setup({
			extensions = {
				fzf = {
					fuzzy = true,                    -- false will only do exact matching
					override_generic_sorter = true,  -- override the generic sorter
					override_file_sorter = true,     -- override the file sorter
					case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
				},
			}
		})
		require('telescope').load_extension('fzf')
		local function fuzzy_find_files()
			builtin.grep_string({
				path_display={'smart'},
				only_sort_text=true,
				word_match='-w',
				search=''
			})
		end
		vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<leader>ps', function ()
			fuzzy_find_files()
		end)
	end
}
