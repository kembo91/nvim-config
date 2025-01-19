vim.g.mapleader = " "
local neogit = require('neogit')
vim.keymap.set("n", "<leader>gs", function ()
	neogit.open()
end)
local autocmd_group = vim.api.nvim_create_augroup("Custom auto-commands", { clear = true })
vim.api.nvim_create_autocmd( "BufWritePre" , {
    pattern = "*.go" ,
    desc = "autoformat go",
    callback = function()
	vim.cmd("GoFmt")
	vim.cmd("GoImports")
    end,
    group = autocmd_group,
})
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
