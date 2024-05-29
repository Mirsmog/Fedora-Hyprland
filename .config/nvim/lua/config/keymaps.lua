-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete word backward
keymap.set("n", "dw", "vb_d")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

keymap.set("n", "<A-w>", LazyVim.ui.bufremove, { desc = "close tab" })
keymap.set("n", "<C-w>", "<C-W>c", opts)

keymap.set("n", "<leader>e", "<cmd>Neotree focus<cr>", opts)
keymap.set("n", "<leader>q", "<cmd>Neotree close<cr>", opts)

keymap.set("n", "<leader>o", "<cmd>Telescope buffers<cr>", opts)
keymap.set("n", "<leader>p", "<cmd>Telescope oldfiles<cr>", opts)
