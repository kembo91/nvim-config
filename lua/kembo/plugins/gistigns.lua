return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		on_attach = function(buf)
			local gs = package.loaded.gitsigns
			local function map(mode, l, r, desc)
				vim.keymap.set(mode, l, r, { buffer = buf, desc = desc })
			end
			map("n", "<leader>hs", gs.preview_hunk)
			map("n", "<leader>hr", function() gs.reset_hunk { vim.fn.line('.'), vim.fn.line('v') } end)
			map('n', '<leader>tb', gs.toggle_current_line_blame)
		end
	}
}
