vim.o.autowriteall = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.api.nvim_create_autocmd(
	"FileType", {
		pattern = { "qf" },
		command = [[nnoremap <buffer> <CR> <CR>:cclose<CR>]]
	})
