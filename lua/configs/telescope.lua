local K = require("keybindings")

return function()
  K.map('n', '<leader>f', ':Telescope find_files<cr>')
  K.map('n', '<C-p>', ':Telescope find_files<cr>')
  K.map('n', '<leader>g', ':Telescope live_grep<cr>')
  K.map('n', '<leader>b', ':Telescope buffers<cr>')
  K.map('n', '<leader>p', ':Telescope projects<cr>')

  local tele = require("telescope")
  tele.load_extension('projects')
  tele.load_extension('session-lens')
end
