local K = require("keybindings")

return function()
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1

  K.map('n', '<leader>e', ':NvimTreeToggle<cr>')

  require("nvim-tree").setup {
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    update_focused_file = {
      enable = true,
      update_root = true
    }
  }
 
  -- Open Nvim-Tree at startup
  -- https://github.com/nvim-tree/nvim-tree.lua/wiki/Open-At-Startup

  vim.api.nvim_create_autocmd({ "VimEnter" }, {
    callback = function()
      require('nvim-tree.api').tree.open()
    end
  })
end
