-- vim: foldmarker=(((,))):foldmethod=marker:foldlevel=0:shiftwidth=2:softtabstop=2:tabstop=2

-- local status_ok, treesitter_configs = pcall(require, "nvim-treesitter.configs")
-- if not status_ok then
--   return
-- end

local M = {}

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
    -- "lua",
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
    -- "vim",
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

return M
