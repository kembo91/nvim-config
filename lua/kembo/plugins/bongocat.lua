return {
	"frostzt/bongo-cat.nvim",
	config = function()
		require("bongo-cat").setup()
		vim.keymap.set("n", "<leader>bc", "<CMD>BongoCat<CR>")
	end,
}
