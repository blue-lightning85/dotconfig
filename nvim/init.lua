--  ╻┏┓╻╻╺┳╸ ╻  ╻ ╻┏━┓
--  ┃┃┗┫┃ ┃  ┃  ┃ ┃┣━┫
--  ╹╹ ╹╹ ╹ ╹┗━╸┗━┛╹ ╹
--  Author: Redline
--  Descirption:
--  - Configuration for nvim
--
-- Set the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Load other default settings
require('config.options')
require('config.autocmds')
require('config.keymaps')
