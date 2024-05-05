local M = {
  "windwp/nvim-autopairs",
  event = "VeryLazy",
};

M.config = function()
  require("nvim-autopairs").setup {
    check_ts = true, -- TreeSitter
  }
end

return M
