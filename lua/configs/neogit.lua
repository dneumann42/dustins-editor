return function()
  require("neogit").setup{}
  require("keybindings").map('n', '<space>g', ':Neogit<cr>')
end
