local M = {
  echo = function(v)
    print(vim.inspect(v))
  end
}

function M.setup()
  local opt = vim.opt -- options

  opt.mouse = 'a'
  opt.clipboard = 'unnamedplus'
  opt.swapfile = false
  opt.completeopt = 'menuone,noinsert,noselect'

  vim.o.timeout = true
  vim.o.timeoutlen = 300

  opt.number = true
  opt.showmatch = true
  opt.foldmethod = 'marker'
  opt.splitright = true
  opt.splitbelow = true
  opt.ignorecase = true
  opt.smartcase = true
  opt.linebreak = true
  opt.termguicolors = true
  opt.laststatus = 3

  opt.expandtab = true
  opt.shiftwidth = 2
  opt.tabstop = 2
  opt.smartindent = true

  opt.hidden = true -- enables buffers running in the background
  opt.history = 1000
  opt.lazyredraw = true
  opt.updatetime = 250

  opt.shortmess:append "sI"

  -- Highlight on yank
  vim.cmd [[
    augroup YankHighlight
      autocmd!
      autocmd TextYankPost * silent! lua vim.highlight.on_yank()
    augroup end
  ]]
end

return M
