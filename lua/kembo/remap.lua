local autocmd_group = vim.api.nvim_create_augroup("golang auto-commands", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.go",
	desc = "autoformat go",
	callback = function()
		vim.cmd("GoImports")
	end,
	group = autocmd_group,
})

local allgrp = vim.api.nvim_create_augroup("all auto-commands", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.*",
	desc = "autoformat all",
	callback = function()
		vim.lsp.buf.format()
	end,
	group = allgrp,
})

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
