
local nvtmx = require('nvim-tmux-navigation')
nvtmx.setup ({
	disable_when_zoomed = true,
})
    vim.keymap.set('n', "<C-h>", nvtmx.NvimTmuxNavigateLeft)
    vim.keymap.set('n', "<C-j>", nvtmx.NvimTmuxNavigateDown)
    vim.keymap.set('n', "<C-k>", nvtmx.NvimTmuxNavigateUp)
    vim.keymap.set('n', "<C-l>", nvtmx.NvimTmuxNavigateRight)
    vim.keymap.set('n', "<C-\\>", nvtmx.NvimTmuxNavigateLastActive)
    vim.keymap.set('n', "<C-Space>", nvtmx.NvimTmuxNavigateNext)

