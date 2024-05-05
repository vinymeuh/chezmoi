local M = {
  'stevearc/conform.nvim',
};

function M.config()
  require("conform").setup({
    formatters_by_ft = {
      go = { "goimports", "gofumpt" },
    },
    format_on_save = {
      lsp_fallback = true,
      timeout_ms = 500,
    },
  })
end

return M
