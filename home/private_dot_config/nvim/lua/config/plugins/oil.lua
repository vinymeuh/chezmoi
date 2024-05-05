local M = {
  "stevearc/oil.nvim",
};

M.config = function()
  local wk = require("which-key")
  wk.register {
    ["<leader>e"] = { "<cmd>Oil<cr>", "Explorer" },
  }

  require("oil").setup({
    default_file_explorer = true,
    view_options = {
      show_hidden = true,
    },
  })
end

return M
