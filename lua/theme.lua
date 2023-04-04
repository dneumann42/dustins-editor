local M = {}

function M.setup()
  vim.cmd [[
  set background=dark
  colorscheme kanagawa
  ]]

  require("transparent").setup {
    groups = { -- table: default groups
      'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
      'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
      'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
      'SignColumn', 'CursorLineNr', 'EndOfBuffer',
    },
    extra_groups = { -- table/string: additional groups that should be cleared
      -- In particular, when you set it to 'all', that means all available groups

      -- example of akinsho/nvim-bufferline.lua
      "all",
      "BufferLineTabClose",
      "BufferlineBufferSelected",
      "BufferLineFill",
      "BufferLineBackground",
      "BufferLineSeparator",
      "BufferLineIndicatorSelected",

      "TelescopeBorder",
      "FloatermBorder",
      "StatusLine",
    },
    exclude_groups = {}, -- table: groups you don't want to clear
  }

  vim.cmd("TransparentEnable")
end

return M
