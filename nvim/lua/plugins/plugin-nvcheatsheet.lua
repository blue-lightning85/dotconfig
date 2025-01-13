--  ┏━┓╻  ╻ ╻┏━╸╻┏┓╻   ┏┓╻╻ ╻┏━╸╻ ╻┏━╸┏━┓╺┳╸┏━┓╻ ╻┏━╸┏━╸╺┳╸ ╻  ╻ ╻┏━┓
--  ┣━┛┃  ┃ ┃┃╺┓┃┃┗┫╺━╸┃┗┫┃┏┛┃  ┣━┫┣╸ ┣━┫ ┃ ┗━┓┣━┫┣╸ ┣╸  ┃  ┃  ┃ ┃┣━┫
--  ╹  ┗━╸┗━┛┗━┛╹╹ ╹   ╹ ╹┗┛ ┗━╸╹ ╹┗━╸╹ ╹ ╹ ┗━┛╹ ╹┗━╸┗━╸ ╹ ╹┗━╸┗━┛╹ ╹
--  Author:Redline
--  Descritpion:
--  - Adds nvcheatsheet plugin to plugin list
--  - Provides a cheatsheet that shows a custom list of keymaps for nvim

local nvcheatsheet_mod = { "smartinellimarco/nvcheatsheet.nvim" }

nvcheatsheet_mod.opts = {
  -- Default header
  header = {
    "                              ",
    "                              ",
    "                              ",
    "┏━╸╻ ╻┏━╸┏━┓╺┳╸┏━┓╻ ╻┏━╸┏━╸╺┳╸",
    "┃  ┣━┫┣╸ ┣━┫ ┃ ┗━┓┣━┫┣╸ ┣╸  ┃ ",
    "┗━╸╹ ╹┗━╸╹ ╹ ╹ ┗━┛╹ ╹┗━╸┗━╸ ╹ ",
    "                              ",
    "                              ",
    "                              ",
  },
  -- Example keymaps (this doesn't create any)
  keymaps = {
    ["Oil"] = {
      { "Toggle oil (closes without saving)", "<leader>q" },
      { "Select entry", "⏎" },
      { "Select entry", "l" },
      { "Go to parent", "h" },
      { "Open vertical split", "⌃v" },
      { "Open horizontal split", "⌃x" },
      { "Go to current working directory", "." },
    },
    ["Cmp"] = {
      { "Select entry", "⌃f" },
      { "Next result - Jump to next snippet placeholder", "⌃n" },
      { "Previous result - Jump to previous snippet placeholder", "⌃p" },
      { "Scroll up in preview", "⌃u" },
      { "Scroll down in preview", "⌃d" },
      { "Abort autocompletion", "⌃e" },
    },
    ["Comment"] = {
      { "Comment line toggle", "gcc" },
      { "Comment block toggle", "gbc" },
      { "Comment visual selection", "gc" },
      { "Comment visual selection using block delimiters", "gb" },
      { "Comment out text object line wise", "gc<motion>" },
      { "Comment out text object block wise", "gb<motion>" },
      { "Add comment on the line above", "gcO" },
      { "Add comment on the line below", "gco" },
      { "Add comment at the end of line", "gcA" },
    },
  },
}

function nvcheatsheet_mod.config(_, opts)
  local nvcheatsheet = require("nvcheatsheet")

  nvcheatsheet.setup(opts)
end

local gruvbox_mod = { "ellisonleao/gruvbox.nvim" }

local function color(name, bgcolor, fgcolor)
  vim.api.nvim_set_hl(0, name, { bg = bgcolor, fg = fgcolor })
end

function gruvbox_mod.config(_, opts)
  local gruvbox = require("gruvbox")
  local palette = gruvbox.palette

  color("NvChAsciiHeader", palette.dark0, palette.bright_green) -- Title
  color("NvChSection", palette.dark1) -- Each cardj
  color("NvCheatsheetWhite", palette.light0, palette.dark1)
  color("NvCheatsheetGray", palette.dark4, palette.dark1)
  color("NvCheatsheetBlue", palette.bright_blue, palette.dark1)
  color("NvCheatsheetCyan", palette.bright_aqua, palette.dark1)
  color("NvCheatsheetRed", palette.bright_red, palette.dark1)
  color("NvCheatsheetGreen", palette.bright_green, palette.dark1)
  color("NvCheatsheetOrange", palette.bright_orange, palette.dark1)
  color("NvCheatsheetPurple", palette.bright_purple, palette.dark1)
  color("NvCheatsheetMagenta", palette.faded_purple, palette.dark1)
  color("NvCheatsheetYellow", palette.bright_yellow, palette.dark1)
end

return { nvcheatsheet_mod, gruvbox_mod }

-- vim: ts=2 sts=2 sw=2 et
