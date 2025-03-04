vim.g.mapleader = " "
local autocmd_group = vim.api.nvim_create_augroup("Custom auto-commands", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.go",
	desc = "autoformat go",
	callback = function()
		vim.cmd("GoImports")
	end,
	group = autocmd_group,
})

local ymalgrp = vim.api.nvim_create_augroup("yaml auto-commands", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.yml",
	desc = "autoformat ymal",
	callback = function()
		vim.lsp.buf.format()
	end,
	group = ymalgrp,
})

local allgrp = vim.api.nvim_create_augroup("Custom auto-commands", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.*",
	desc = "autoformat all",
	callback = function()
		vim.lsp.buf.format()
	end,
	group = allgrp,
})

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
