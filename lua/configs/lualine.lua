return function()
  require('lualine').setup {
    options = {
      theme = "auto",
      globalstatus = true,
    },
    sections = {
      lualine_x = { "import" },
      lualine_c = { require('auto-session.lib').current_session_name }
    }
  }
end
