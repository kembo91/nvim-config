-- Define custom highlights for git signs
vim.api.nvim_set_hl(0, 'GitSignsAdd', { fg = '#50fa7b' })            -- Green for added lines
vim.api.nvim_set_hl(0, 'GitSignsChange', { fg = '#f1fa8c' })         -- Yellow for changed lines
vim.api.nvim_set_hl(0, 'GitSignsDelete', { fg = '#ff5555' })         -- Red for deleted lines
vim.api.nvim_set_hl(0, 'GitSignsTopdelete', { fg = '#ff5555' })      -- Red for top-deleted lines
vim.api.nvim_set_hl(0, 'GitSignsChangedelete', { fg = '#ffb86c' })   -- Orange for changed and deleted lines

-- Define highlight for number gutter
vim.api.nvim_set_hl(0, 'GitSignsAddNr', { link = 'GitSignsAdd' })          -- Link to GitSignsAdd
vim.api.nvim_set_hl(0, 'GitSignsChangeNr', { link = 'GitSignsChange' })    -- Link to GitSignsChange
vim.api.nvim_set_hl(0, 'GitSignsDeleteNr', { link = 'GitSignsDelete' })    -- Link to GitSignsDelete
vim.api.nvim_set_hl(0, 'GitSignsTopdeleteNr', { link = 'GitSignsTopdelete' }) -- Link to GitSignsTopdelete
vim.api.nvim_set_hl(0, 'GitSignsChangedeleteNr', { link = 'GitSignsChangedelete' }) -- Link to GitSignsChangedelete

-- Setup gitsigns with the new configuration
require('gitsigns').setup {
  preview_config = {
    border = 'single',
  },
  sign_priority = 6,
  current_line_blame = false,
  update_debounce = 100,
  status_formatter = nil,
}

