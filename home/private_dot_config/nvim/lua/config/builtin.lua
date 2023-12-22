-- ███    ██ ███████  ██████  ██    ██ ██ ███    ███     ██████  ██    ██ ██ ██      ████████ ██ ███    ██ 
-- ████   ██ ██      ██    ██ ██    ██ ██ ████  ████     ██   ██ ██    ██ ██ ██         ██    ██ ████   ██ 
-- ██ ██  ██ █████   ██    ██ ██    ██ ██ ██ ████ ██     ██████  ██    ██ ██ ██         ██    ██ ██ ██  ██ 
-- ██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██     ██   ██ ██    ██ ██ ██         ██    ██ ██  ██ ██ 
-- ██   ████ ███████  ██████    ████   ██ ██      ██     ██████   ██████  ██ ███████    ██    ██ ██   ████ 
--                                                           (aka configuration without any plugins)                           
---------------
--- Options ---
---------------
vim.g.mapleader = " "

vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.guicursor = "n-v-c-i:block"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 3
vim.opt.softtabstop = 3
vim.opt.shiftwidth = 3
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = off

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.g.netrw_banner = 0

---------------
--- Keymaps ---
---------------
-- netrw
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

