-- disable netrw at the very start of your init.lua
-- optionally enable 24-bit colour
vim.opt.termguicolors = true
local tree = require("nvim-tree")
local api = require("nvim-tree.api")
-- OR setup with some options
tree.setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
vim.keymap.set('n', '<C-q>', function ()
	api.tree.toggle()
end)
