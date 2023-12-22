return {
   'nvim-treesitter/nvim-treesitter',
   build = ':TSUpdate',
   config = function()
      local configs = require('nvim-treesitter.configs')

      configs.setup({
        ensure_installed = {'bash', 'c', 'go', 'lua', 'query', 'vim', 'vimdoc', 'zig'},
        sync_install = false,
        auto_install = false,
        highlight = {
           enable = true,
           additional_vim_regex_highlighting = false,
        }
      })
   end
}
