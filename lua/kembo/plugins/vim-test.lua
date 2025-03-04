return {
	'vim-test/vim-test',
	config = function()
		vim.keymap.set('n', '<leader>tt', ':TestNearest COVERAGE=1<CR>')
		vim.keymap.set('n', '<leader>tf', ':TestFile COVERAGE=1<CR>')
		vim.keymap.set('n', '<leader>ts', ':TestSuite COVERAGE=1<CR>')
		vim.keymap.set('n', '<leader>tl', ':TestLast COVERAGE=1<CR>')

		vim.g["test#strategy"] = "basic"
		vim.g["test#basic#start_normal"] = 1
		vim.g["test#go#ginkgo#options"] = "--coverprofile=coverage.out --cover --trace"
	end
}
