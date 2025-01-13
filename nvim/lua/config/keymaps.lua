--  ╻┏ ┏━╸╻ ╻┏┳┓┏━┓┏━┓┏━┓ ╻  ╻ ╻┏━┓
--  ┣┻┓┣╸ ┗┳┛┃┃┃┣━┫┣━┛┗━┓ ┃  ┃ ┃┣━┫
--  ╹ ╹┗━╸ ╹ ╹ ╹╹ ╹╹  ┗━┛╹┗━╸┗━┛╹ ╹
--  Author: Redline
--  Description:
--  - Add any additional keymaps here

-- Set nvcheatsheet keymap
local nvcheatsheet = require("nvcheatsheet")
vim.keymap.set("n", "<leader>!", nvcheatsheet.toggle, {desc = "Open Cheatsheet"})

-- Move lines when in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keeps cursor stationary when appending next line
vim.keymap.set("n", "J", "mzJ`z")

-- Keeps cursor in middle when half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Centers search terms
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste while preserving copy buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Paste from system clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>P", [["+P]])

-- Deleting to void register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Saves changes when using <C-c> to exit
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Disables Q command
vim.keymap.set("n", "Q", "<nop>")

-- Formats file
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Replace current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
