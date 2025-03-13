return {
	'alanfortlink/blackjack.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		require("blackjack").setup({
			card_style = "large"
		})
		vim.keymap.set("n", "<leader>bj", ":BlackJackNewGame <CR>")
	end
}
