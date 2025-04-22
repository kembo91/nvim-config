return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "goimports" },
			},
			default_format_opts = {
				lsp_format = "never",
			},
			format_on_save = {
				lsp_format = "never",
				timeout_ms = 1500,
			},
		})
	end,
}
