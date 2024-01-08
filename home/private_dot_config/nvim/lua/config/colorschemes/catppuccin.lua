local M = {
   'catppuccin/nvim',
   name = "catppuccin",
   priority = 1000,
}       

function M.config() 
   vim.cmd.colorscheme "catppuccin-latte"
end

vim.api.nvim_create_user_command(
   'Darkmode',
   function()
      vim.cmd.colorscheme "catppuccin-frappe"
   end,
   {}
)

vim.api.nvim_create_user_command(
   'Lightmode',
   function()
      vim.cmd.colorscheme "catppuccin-latte"
   end,
   {}
)

return M
