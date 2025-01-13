--  ┏━┓╻  ╻ ╻┏━╸╻┏┓╻   ╻ ╻╻┏┳┓   ╺┳╸┏┳┓╻ ╻╻ ╻   ┏┓╻┏━┓╻ ╻╻┏━╸┏━┓╺┳╸┏━┓┏━┓ ╻  ╻ ╻┏━┓
--  ┣━┛┃  ┃ ┃┃╺┓┃┃┗┫╺━╸┃┏┛┃┃┃┃╺━╸ ┃ ┃┃┃┃ ┃┏╋┛╺━╸┃┗┫┣━┫┃┏┛┃┃╺┓┣━┫ ┃ ┃ ┃┣┳┛ ┃  ┃ ┃┣━┫
--  ╹  ┗━╸┗━┛┗━┛╹╹ ╹   ┗┛ ╹╹ ╹    ╹ ╹ ╹┗━┛╹ ╹   ╹ ╹╹ ╹┗┛ ╹┗━┛╹ ╹ ╹ ┗━┛╹┗╸╹┗━╸┗━┛╹ ╹
--  Author: Redline
--  Description:
--  - Adds vim-tmux-navigator plugin to plugin list
--  - Integrates nvim and tmux
--  - Allows pane navigation with vim key bindings

return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
  },
  keys = {
    { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
    { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
    { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
    { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
    { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
  },
}
