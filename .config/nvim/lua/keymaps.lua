-- NoPlug
vim.g.mapleader = ' '

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Save With "Ctrl + s" In Both Normal And Insert Mode
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>a")

-- Exit With "Ctrl + q" In Both Normal And Insert Mode
vim.keymap.set("n", "<C-q>", ":q<CR>")
vim.keymap.set("i", "<C-q>", "<Esc>:q<CR>a")

-- Turn Exit with "Ctrl + w" Off
vim.keymap.set("n", "<C-w>", "")
vim.keymap.set("i", "<C-w>", "")

-- Terminal Exit Insert Mode
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])

-- Plug

-- Telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', telescope.find_files, {})
vim.keymap.set('n', '<leader>g', telescope.live_grep, {})

-- Trouble
local trouble = require('trouble')
