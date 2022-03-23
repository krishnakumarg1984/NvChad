-- vim: foldmarker=(((,))):foldmethod=marker:foldlevel=0:shiftwidth=2:softtabstop=2:tabstop=2

local M = {}

-- Each of these options are documented in `:help nvim-tree.OPTION_NAME`
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_show_icons = {
  -- tree_width = 30,
  files = 1,
  folder_arrows = 1,
  folders = 1,
  git = 1,
}
vim.g.nvim_tree_icons = {
  git = {
    unstaged = "",
    untracked = "★",
  },
  folder = {
    default = "",
    empty = "",
    empty_open = "",
    open = "",
    symlink = "",
    symlink_open = "",
  },
}

vim.g.nvim_tree_respect_buf_cwd = 1

-- local tree_cb = nvim_tree_config.nvim_tree_callback

M.nvimtree = {
  -- open_on_setup = false,
  ignore_ft_on_setup = {
    "alpha",
    "dashboard",
    "startify",
  },
  -- auto_close = true,
  -- hijack_cursor = false,
  -- update_to_buf_dir = {
  --   enable = true,
  --   auto_open = true,
  -- },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  -- update_focused_file = {
  --   -- ignore_list = {},
  -- },
  -- system_open = {
  --   cmd = nil,
  --   args = {},
  -- },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    --   -- width = 30,
    --   -- height = 30,
    hide_root_folder = false,
    --   -- auto_resize = true,
    --   -- mappings = {
    --   --   custom_only = false,
    --   --   list = {
    --   --     { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
    --   --     { key = "h", cb = tree_cb "close_node" },
    --   --     { key = "v", cb = tree_cb "vsplit" },
    --   --   },
    --   -- },
    --   -- number = false,
    --   -- relativenumber = false,
  },
  trash = {
    cmd = "trash-put",
    require_confirm = true,
  },
  -- quit_on_open = 0,
  -- disable_window_picker = 0,
  -- root_folder_modifier = ":t",
}

return M
