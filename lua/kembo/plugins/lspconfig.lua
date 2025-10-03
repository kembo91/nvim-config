return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{ "folke/neodev.nvim", opts = {} },
		{ "hrsh7th/cmp-nvim-lsp-signature-help" },
		{ "mason-org/mason-lspconfig.nvim" },
	},
	config = function()
		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local mason_lspconfig = require("mason-lspconfig")

		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end

		local capabilities = cmp_nvim_lsp.default_capabilities()

		local default_handlers = {
			function(server_name)
				lspconfig[server_name].setup({
					capabilities = capabilities,
				})
			end,
		}

		mason_lspconfig.setup_handlers(default_handlers)
	end,
}
