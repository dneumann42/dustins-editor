return function()
  require('lualine').setup {
    options = {
      theme = "auto",
      globalstatus = true,
    },
    sections = {
      lualine_x = { "import" }
    }
  }
end
