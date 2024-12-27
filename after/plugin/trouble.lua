local trouble = require('trouble')
vim.keymap.set("n", "<leader>zz",  function ()
	trouble.toggle("diagnostics")
end )
