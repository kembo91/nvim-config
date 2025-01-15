return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
	vim.g.loaded_netrw=1
	vim.g.loaded_netrwPlugin=1
	vim.opt.termguicolors=true
	require("nvim-tree").setup {
			diagnostics={
				enable=true,
				show_on_dirs=true,
				show_on_open_dirs=false,
			},
			update_focused_file={
				enable=true,
			}
		}
	vim.keymap.set("n", "<C-q>", "<Cmd>NvimTreeToggle<CR>,{silent=true}")
  end,
}
