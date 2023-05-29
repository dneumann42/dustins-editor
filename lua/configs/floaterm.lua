return function()
  local cmd = vim.cmd

  cmd('nnoremap <silent> <F9> :FloatermNew<cr>')
  cmd('tnoremap <silent> <F9> <C-\\><C-n>:FloatermNew<cr>')
  cmd('tnoremap <silent> <ESC> <C-\\><C-n>:FloatermHide<cr>')

  cmd('nnoremap <silent> <SPACE>n :FloatermNext<cr>')
  cmd('nnoremap <silent> <SPACE>p :FloatermPrev<cr>')

  cmd('tnoremap <silent> \\[ <C-\\><C-n>:FloatermNext<cr>')
  cmd('tnoremap <silent> \\] <C-\\><C-n>:FloatermPrev<cr>')

  cmd('nnoremap <silent> <SPACE><SPACE> :FloatermToggle<cr> <C-\\><C-n>:FloatermUpdate --position=topright --width=70<cr>')
  cmd('nnoremap <silent> <F5> <C-\\><C-n>:FloatermNew --autoclose=0 love .<cr>')
end
