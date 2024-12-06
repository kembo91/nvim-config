vim.keymap.set('n', '<leader>tt', ':TestNearest<CR>') 
vim.keymap.set('n', '<leader>tf', ':TestFile<CR>') 
vim.keymap.set('n', '<leader>ts', ':TestSuite<CR>') 
vim.keymap.set('n', '<leader>tl', ':TestLast<CR>') 

vim.g["test#strategy"] = "basic"
