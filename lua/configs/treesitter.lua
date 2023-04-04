return function()
  require("nvim-treesitter").setup {
    ensure_installed = { "c", "lua", "vim", "help" },
    sync_install = false,
    auto_install = true,
  }
end
