local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
   require('go.format').gofmt()
  end,
  group = format_sync_grp,
})
require("go").setup()
require("swagger-preview").setup({
    -- The port to run the preview server on
    port = 8000,
    -- The host to run the preview server on
    host = "localhost",
})
