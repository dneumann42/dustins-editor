return function()
  if vim.g.neovide then
    vim.o.guifont = "Source Code Pro:h14"

    vim.g.neovide_refresh_rate = 60
    vim.g.neovide_no_idle = true
    vim.g.neovide_remember_window_size = true
    vim.g.neovide_profiler = false
    vim.g.neovide_cursor_trail_size = 0.05
    vim.g.neovide_cursor_antialiasing = true
    vim.g.neovide_cursor_animate_in_insert_mode = true
    vim.g.neovide_cursor_animate_command_line = true

    local t = 0.9
    vim.g.neovide_transparency = t
    vim.g.transparency = t
  end
end
