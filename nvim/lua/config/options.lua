--  ┏━┓┏━┓╺┳╸╻┏━┓┏┓╻┏━┓ ╻  ╻ ╻┏━┓
--  ┃ ┃┣━┛ ┃ ┃┃ ┃┃┗┫┗━┓ ┃  ┃ ┃┣━┫
--  ┗━┛╹   ╹ ╹┗━┛╹ ╹┗━┛╹┗━╸┗━┛╹ ╹
--  Author: Redline
--  Description:
--  - Add any additional options here

-- Disable wrapping
vim.opt.wrap = false

-- Set numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- Set indentation
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- Yank to system clipboard
vim.opt.clipboard:append("unnamedplus")

