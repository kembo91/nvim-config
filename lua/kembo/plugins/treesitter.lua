return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = { "bash", "terraform", "go", "yaml", "lua", "vim", "query", "javascript", "html", "hcl" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
			ignore_install = {},
			auto_install = true,
			modules = {}
		})
		vim.treesitter.language.register("bash", "curl")
		return true
	end
}
