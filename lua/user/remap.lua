vim.g.mapleader = " "
vim.g.localmapleader = " "

local opts = { noremap = true, silent = true }

local keymap = vim.keymap.set

-- Open Directory View
-- keymap("n", "<C-b>", vim.cmd.Ex, opts)

-- Format
keymap("v", "<C-s>", "=", opts)
keymap("x", "<C-s>", "=", opts)

-- Navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resizing
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Buffer Navigation
keymap("n", "<A-Left>", ":bnext<CR>", opts)
keymap("n", "<A-Right>", ":bprevious<CR>", opts)

-- Indent
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

-- Text Movement
keymap("v", "<A-Down>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-Up>", ":m '<-2<CR>gv=gv", opts)

keymap("x", "<A-Up>", ":m '<-2<CR>gv=gv", opts)
keymap("x", "<A-Down>", ":m '>+1<CR>gv=gv", opts)
