-- vim: ft=lua:foldmarker=(((,))):foldmethod=marker:foldlevelstart=0:shiftwidth=2:softtabstop=2:tabstop=2

-- Core 'packer.startup' lua function to load plugins (((

return packer.startup(function(use)
  -- List of plugins here (((

  -- Colorscheme plugins (((

  use { "rebelot/kanagawa.nvim" }

  -- )))

  -- Vimscript plugins (((

  -- ale (((

  use {
    "dense-analysis/ale",
    ft = {
      "ansible",
      "asm",
      "awk",
      "bazel",
      "bib",
      "sh",
      "zsh",
      "bash",
      "c",
      "cpp",
      "chef",
      "cmake",
      "cuda",
      "dockerfile",
      "fortran",
      "gitcommit",
      "go",
      "html",
      "markdown",
      "vim",
      "tex",
      "julia",
      "mail",
      "make",
      "matlab",
      "yaml",
      "help",
      "txt",
      "text",
      "rust",
      "ruby",
      "perl",
      "rst",
      "r",
      "python",
      "puppet",
      "powershell",
    },
    cmd = "ALEEnable",
    config = "vim.cmd[[ALEEnable]]",
  }

  -- )))

  -- AsyncTask and AsyncRun (((

  -- use { "skywind3000/asyncrun.vim", cmd = { "AsyncRun!", "AsyncRun", "AsyncStop!", "AsyncStop" } }
  use { "skywind3000/asyncrun.vim", event = { "CursorHold" } }

  use {
    "skywind3000/asynctasks.vim",
    -- requires = { "skywind3000/asyncrun.vim" },
    cmd = { "AsyncTask", "AsyncTaskEdit!", "AsyncTaskEdit", "AsyncTaskList", "AsyncTaskMacro" },
    config = "vim.cmd[[ALEEnable]]",
  }

  -- )))

  -- )))

  -- Other lua plugins (((

  use { "akinsho/toggleterm.nvim", cmd = { "ToggleTerm", "ToggleTermToggleAll", "TermExec" } }

  -- Telescope (((

  -- octo.nvim ((( -- or  nvim-telescope/telescope-github.nvim
  use {
    "pwntester/octo.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "kyazdani42/nvim-web-devicons",
    },
    cmd = { "Octo" },
  }
  -- )))

  -- )))

  -- Git (((

  use "lewis6991/gitsigns.nvim"

  -- )))

  -- https://github.com/Shatur/neovim-session-manager
  -- use { "nyngwang/NeoZoom.lua", cmd = { "NeoVSplit", "NeoSplit", "NeoZoomToggle" } }

  -- )))

  -- Autocompletion and snippets support (((

  use { "quangnguyen30192/cmp-nvim-tags" }

  -- )))

  -- LSP (((

  -- use { "tami5/lspsaga.nvim", after = "nvim-lspconfig", event = { "CursorHold" } } -- , event = "InsertEnter" })

  -- )))

  -- )))
end)

-- )))
