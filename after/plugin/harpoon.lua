local harpoon = require("harpoon")
harpoon:setup()
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)

vim.keymap.set("n", "<C-n>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-m>", function() harpoon:list():next() end)

vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
