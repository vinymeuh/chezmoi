local M = {
  'folke/trouble.nvim',
  opts = {},
  keys = {
    { "<leader>dt", "<cmd>Trouble diagnostics toggle<CR>",              desc = "Diagnostics Toggle", },
    { "<leader>db", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Diagnostics Toggle (Buffer)", },
  },
}

return M
