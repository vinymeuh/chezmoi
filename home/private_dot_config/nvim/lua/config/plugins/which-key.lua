local M = {
  "folke/which-key.nvim",
  event = "VeryLazy",
}

function M.config()
  local which_key = require("which-key")
  which_key.setup({
    window = {
      border = "rounded",
      position = "border",
    },
  })

  local mappings = {
    b = { name = "Buffers" },
    bc = { "<cmd>:bd<CR>", "Close" },
    f = { name = "Find" },
    w = { name = "Windows" },
    wc = { "<cmd>:close<CR>", "Close" },
    wh = { "<cmd>split<CR>", "Split horizontically" },
    ws = { "<cmd>vsplit<CR>", "Split" },
    ww = { "<c-w>w<CR>", "Switch windows" },
  }
  which_key.register(mappings, { mode = "n", prefix = "<leader>" })
end

return M
