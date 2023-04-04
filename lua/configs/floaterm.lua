return function()
  local cmd = vim.cmd

  cmd('nnoremap <silent> <F9> :FloatermNew<cr>')
  cmd('tnoremap <silent> <F9> <C-\\><C-n>:FloatermNew<cr>')
  cmd('tnoremap <silent> <ESC> <C-\\><C-n>:FloatermHide<cr>')

  cmd('nnoremap <silent> <SPACE>n :FloatermNext<cr>')
  cmd('nnoremap <silent> <SPACE>p :FloatermPrev<cr>')

  cmd('tnoremap <silent> \\[ <C-\\><C-n>:FloatermNext<cr>')
  cmd('tnoremap <silent> \\] <C-\\><C-n>:FloatermPrev<cr>')

  cmd('nnoremap <silent> <SPACE><SPACE> :FloatermToggle<cr>')
  cmd('nnoremap <silent> <F5> <C-\\><C-n>:FloatermNew --autoclose=0 love .<cr>')
  cmd('tnoremap <silent> <SPACE>tr <C-\\><C-n>:FloatermUpdate --position=topright --width=50<cr>')
  cmd('tnoremap <silent> <SPACE>tl <C-\\><C-n>:FloatermUpdate --position=topleft --width=60<cr>')
  cmd('tnoremap <silent> <SPACE>br <C-\\><C-n>:FloatermUpdate --position=bottomright --width=50<cr>')
  cmd('tnoremap <silent> <SPACE>bl <C-\\><C-n>:FloatermUpdate --position=bottomleft --width=60<cr>')
  cmd('tnoremap <silent> <SPACE>c <C-\\><C-n>:FloatermUpdate --position=center --width=60<cr>')
end
