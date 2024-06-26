-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

vim.opt.mouse = ""
vim.opt.wrap = true

vim.filetype.add({
  extension = {
    conf = "bash",
    yuck = "bash",
  },
})

vim.cmd([[
augroup kitty_mp
    autocmd!
    au VimEnter * :silent !kitty @ set-spacing padding=0 margin=0
    au VimEnter * :silent !kitty @ set-background-opacity 1
    au VimEnter * :silent !kitty @ set-font-size 14

    au VimLeave * :silent !kitty @ set-spacing padding=default margin=default
    au VimLeave * :silent !kitty @ set-background-opacity 0.95
    au VimLeave * :silent !kitty @ set-font-size default
augroup END
]])

-- Set padding in Kitty when entering
