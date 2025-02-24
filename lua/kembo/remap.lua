vim.g.mapleader = " "
local autocmd_group = vim.api.nvim_create_augroup("Custom auto-commands", { clear = true })
vim.api.nvim_create_autocmd( "BufWritePre" , {
    pattern = "*.go" ,
    desc = "autoformat go",
    callback = function()
	vim.cmd("GoImports")
	vim.lsp.buf.format()
    end,
    group = autocmd_group,
})
local ymalgrp = vim.api.nvim_create_augroup("yaml auto-commands", { clear = true })
vim.api.nvim_create_autocmd( "BufWritePre" , {
    pattern = "*.yml" ,
    desc = "autoformat ymal",
    callback = function()
	vim.lsp.buf.format()
    end,
    group = ymalgrp,
})
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])


