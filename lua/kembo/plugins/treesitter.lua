return{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
          ensure_installed = {"bash", "go", "yaml", "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html","hcl" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
	vim.treesitter.language.register("bash", "curl")
        })
	return true
    end
}
