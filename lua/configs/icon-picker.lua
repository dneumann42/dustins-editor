local K = require("keybindings")

return function()
  require("icon-picker").setup {
    disable_legacy_commands = true
  }

  K.map("n", "<leader>i", ":IconPickerNormal<cr>")
  K.map("n", "<leader>I", ":IconPickerYank<cr>")
  K.map("i", "<C-A-i>", "<ESC>:IconPickerYank<cr>")
end
