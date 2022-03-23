-- vim: foldmarker=(((,))):foldmethod=marker:foldlevel=0:shiftwidth=2:softtabstop=2:tabstop=2

local M = {}

-- M.treesitter (((

vim.cmd [[
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
]]

M.treesitter = {
  ensure_installed = {
    "bash",
    "bibtex",
    "c",
    "cmake",
    -- "comment",
    "cpp",
    "cuda",
    "dockerfile",
    "dot",
    "fortran",
    "go",
    "html",
    "java",
    -- "javascript",
    "json",
    "json5",
    "jsonc",
    "julia",
    -- "latex",
    "lua",
    "make",
    "markdown",
    "ninja",
    "perl",
    "python",
    "r",
    "regex",
    -- "rst",
    "ruby",
    -- "rust",
    "toml",
    "verilog",
    "vim",
    "yaml",
  }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  ignore_install = { "" }, -- List of parsers to ignore installing
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    use_languagetree = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
    -- disable = { "yaml" },
  },
  --[[ incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  }, ]]
  refactor = {
    highlight_definitions = { enable = true },
    clear_on_cursor_move = true, -- Set to false if you have an `updatetime` of ~100.
    -- highlight_current_scope = { enable = true },
    -- smart_rename = {
    --     enable = true,
    --     keymaps = {
    --         smart_rename = "grr",
    --     },
    -- },
  },
  -- context_commentstring = {
  --   enable = true,
  --   enable_autocmd = false,
  --   config = {
  --     vim = '" %s',
  --   },
  -- },
  textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["al"] = "@loop.outer",
        ["il"] = "@loop.inner",
      },
    }, -- 'textobjects/select' table ends
    swap = {
      enable = true,
      swap_next = {
        ["<leader>s"] = "@parameter.inner",
      },
      swap_previous = {
        ["<leader>S"] = "@parameter.inner",
      },
    }, -- 'textobjects/swap' table ends
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        ["]m"] = "@function.outer", -- "m" for method
        ["]]"] = "@class.outer",
      },
      goto_next_end = {
        ["]M"] = "@function.outer",
        ["]["] = "@class.outer",
      },
      goto_previous_start = {
        ["[m"] = "@function.outer",
        ["[["] = "@class.outer",
      },
      goto_previous_end = {
        ["[M"] = "@function.outer",
        ["[]"] = "@class.outer",
      },
    }, -- 'textobjects/move' table ends
    lsp_interop = {
      enable = true,
      border = "none",
      peek_definition_code = {
        ["<leader>df"] = "@function.outer",
        ["<leader>dF"] = "@class.outer",
      }, -- 'textobjects/lsp_interop/peek_definition_code' table ends
    }, -- 'textobjects/lsp_interop' table ends
  }, -- 'textobjects' table ends
}

-- )))

-- M.nvimtree (((
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
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
-- )))

-- (((

M.blankline = {
  buftype_exclude = { "terminal", "nofile" },
  blankline_filetype_exclude = {
    "",
    "aerial",
    "alpha",
    "dashboard",
    "help",
    "lsp-installer",
    "lspinfo",
    "neogitstatus",
    "nvchad_cheatsheet",
    "NvimTree",
    "packer",
    "startify",
    "TelescopePrompt",
    "TelescopeResults",
    "terminal",
    "Trouble",
  },
  -- show_current_context = true,
}

-- )))

-- (((

M.telescope = {
  extensions = {
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      -- case_mode = "smart_case", -- or "ignore_case" or "respect_case". The default case_mode is "smart_case"
    },
  },
}

-- )))

-- (((

M.gitsigns = {
  signs = {
    add = { hl = "GitSignsAdd", text = "▎", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
    change = { hl = "GitSignsChange", text = "▎", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
    delete = { hl = "GitSignsDelete", text = "", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
    topdelete = { hl = "GitSignsDelete", text = "‾", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
    changedelete = {
      hl = "GitSignsChange",
      text = "▎",
      numhl = "GitSignsChangeNr",
      linehl = "GitSignsChangeLn",
    },
  },
  signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
  numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
  watch_gitdir = {
    interval = 1000,
    follow_files = true,
  },
  attach_to_untracked = true,
  current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
    ignore_whitespace = false,
  },
  current_line_blame_formatter_opts = {
    relative_time = false,
  },
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000,
  preview_config = {
    -- Options passed to nvim_open_win
    border = "single",
    style = "minimal",
    relative = "cursor",
    row = 0,
    col = 1,
  },
  yadm = {
    enable = false,
  },
  on_attach = function(bufnr)
    local function map(mode, lhs, rhs, opts)
      opts = vim.tbl_extend("force", { noremap = true, silent = true }, opts or {})
      vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
    end

    -- Navigation
    map("n", "]c", "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", { expr = true })
    map("n", "[c", "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", { expr = true })

    -- Actions
    map("n", "<leader>hs", ":Gitsigns stage_hunk<CR>")
    map("v", "<leader>hs", ":Gitsigns stage_hunk<CR>")
    map("n", "<leader>hr", ":Gitsigns reset_hunk<CR>")
    map("v", "<leader>hr", ":Gitsigns reset_hunk<CR>")
    map("n", "<leader>hS", "<cmd>Gitsigns stage_buffer<CR>")
    map("n", "<leader>hu", "<cmd>Gitsigns undo_stage_hunk<CR>")
    map("n", "<leader>hR", "<cmd>Gitsigns reset_buffer<CR>")
    map("n", "<leader>hp", "<cmd>Gitsigns preview_hunk<CR>")
    map("n", "<leader>hb", '<cmd>lua require"gitsigns".blame_line{full=true}<CR>')
    map("n", "<leader>tb", "<cmd>Gitsigns toggle_current_line_blame<CR>")
    map("n", "<leader>hd", "<cmd>Gitsigns diffthis<CR>")
    map("n", "<leader>hD", '<cmd>lua require"gitsigns".diffthis("~")<CR>')
    map("n", "<leader>td", "<cmd>Gitsigns toggle_deleted<CR>")

    -- Text object
    map("o", "ih", ":<C-U>Gitsigns select_hunk<CR>")
    map("x", "ih", ":<C-U>Gitsigns select_hunk<CR>")
  end,
}

-- )))

return M
