vim.api.nvim_create_autocmd(
	"FileType", {
		pattern = { "qf" },
		command = [[nnoremap <buffer> <Tab> <CR>]]
	})


vim.api.nvim_create_autocmd(
	"FileType", {
		pattern = { "qf" },
		command = [[nnoremap <buffer> <CR> <CR>:cclose<CR>]]
	})
