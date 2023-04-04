local M = {}

function M.bootstrap()
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", -- latest stable release
      lazypath,
    })
  end
  vim.opt.rtp:prepend(lazypath)
  return M
end

function M.setup(opts)
  opts = opts or nil

  require("lazy").setup {
      "folke/which-key.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "ahmedkhalf/project.nvim",
      "sudormrfbin/cheatsheet.nvim",
      "rebelot/kanagawa.nvim",
      "xiyaowong/transparent.nvim",

      -- https://github.com/stevearc/dressing.nvim#configuration
      "stevearc/dressing.nvim",
      "ziontee113/icon-picker.nvim",

      -- File tree
      "nvim-tree/nvim-web-devicons",
      "nvim-tree/nvim-tree.lua",

      -- line
      "nvim-lualine/lualine.nvim",

      -- Terminal
      "voldikss/vim-floaterm",

      -- Tree-sitter
      "nvim-treesitter/nvim-treesitter",
      "kylechui/nvim-surround",

      -- marks
      "chentoast/marks.nvim",

      -- start page
      {
          "glepnir/dashboard-nvim",
          event = 'VimEnter',
          dependencies = { "nvim-tree/nvim-web-devicons" },
      },

      -- neogit
      "TimUntersberger/neogit",

      -- "neovim/nvim-lspconfig",
      -- "williamboman/nvim-lsp-installer", -- Automatically install LSPs
      -- "hrsh7th/cmp-nvim-lsp",
      "williamboman/mason.nvim",
      "hrsh7th/nvim-cmp", -- auto complete
      "jose-elias-alvarez/null-ls.nvim", -- Null ls is used for code formatting and pylint analysis
      {
          "jay-babu/mason-null-ls.nvim",
          event = { "BufReadPre", "BufNewFile" },
          dependencies = {
            "williamboman/mason.nvim",
            "jose-elias-alvarez/null-ls.nvim",
          },
      },
      'williamboman/mason-lspconfig.nvim',
      'neovim/nvim-lspconfig',

      -- Language Specific
 
      'simrat39/rust-tools.nvim',

      -- Some packages i've been looking into

      -- https://github.com/j-morano/buffer_manager.nvim
      -- https://github.com/axieax/urlview.nvim
      -- https://github.com/code-biscuits/nvim-biscuits
      -- https://github.com/kevinhwang91/nvim-ufo
      -- https://github.com/nguyenvukhang/nvim-toggler
      -- https://github.com/David-Kunz/jester
      -- https://github.com/rcarriga/nvim-notify
  }
  return M
end

return M
