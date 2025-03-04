return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim"
	},
	config = function()
		local lspconfig = require("mason-lspconfig")
		lspconfig.setup({
			ensure_installed = {
			}
		})
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗"
				}
			}
		})
	end
}
