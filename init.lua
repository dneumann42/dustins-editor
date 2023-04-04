----------------------------
-- Dustin's neovim config --
----------------------------

require("plugins")
  .bootstrap()
  .setup {}

require("configs/configs")()

require("config").setup {}
require("keybindings").setup {}
require("theme").setup {}
