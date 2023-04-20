----------------------------
-- Dustin's neovim config --
----------------------------

require("plugins")
  .bootstrap()
  .setup {}

require("keybindings").setup()
require("config").setup()
require("configs/configs")()
require("theme").setup()
