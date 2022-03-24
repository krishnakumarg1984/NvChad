-- /lua/custom/plugins/init.lua
return {
  { "tyru/capture.vim", cmd = { "Capture" } },
  { "antoinemadec/FixCursorHold.nvim" }, -- This is needed to fix lsp doc highlight
  { "kenn7/vim-arsync", cmd = { "ARshowConf", "ARsyncUp", "ARsyncUpDelete", "ARsyncDown" } },
  { "jeffkreeftmeijer/vim-numbertoggle", event = "InsertEnter" },
  { "tpope/vim-unimpaired", keys = { "[", "]" } },
  { "lervag/vimtex", ft = "tex" },
  { "svban/YankAssassin.vim", event = { "CursorHold" } },
  -- { "dstein64/vim-startuptime", cmd = { "StartupTime" } },
  -- { "tweekmonster/startuptime.vim", cmd = { "StartupTime" } },
  -- { "nvim-lua/popup.nvim" }, -- An implementation of the Popup API from vim in Neovim
  { "stevearc/aerial.nvim" }, -- , cmd = { "AerialToggle", "AerialToggle!", "AerialOpen", "AerialOpen!", "AerialClose", "AerialPrev", "AerialNext", "AerialPrevUp", "AerialNextUp", "AerialGo", "AerialTreeOpen", "AerialTreeOpen!", "AerialTreeClose", "AerialTreeClose!", "AerialTreeToggle", "AerialTreeToggle!", "AerialTreeOpenAll", "AerialTreeCloseAll", "AerialTreeSyncFolds", "AerialInfo" } }  -- , event = { "CursorHold" } }
  { "sudormrfbin/cheatsheet.nvim", cmd = { "Cheatsheet", "CheatsheetEdit" } },
  { "hrsh7th/cmp-cmdline", after = "nvim-cmp" }, -- cmdline completions
  { "ellisonleao/glow.nvim", ft = { "markdown", "lsp_markdown", "rmd" }, cmd = { "Glow", "GlowInstall" } },
  { "echasnovski/mini.nvim" },
  { "karb94/neoscroll.nvim" }, -- , keys = { "C-d" } }
  { "Shatur/neovim-cmake", ft = { "c", "cpp", "cmake", "fortran" }, requires = { "mfussenegger/nvim-dap" } },
  { "jose-elias-alvarez/null-ls.nvim", after = "nvim-lspconfig", cmd = "NullLsLoad" },
  { "weilbith/nvim-code-action-menu", cmd = "CodeActionMenu" },
  { "klen/nvim-config-local" }, -- , event = { "CursorHold" } }
  { "kevinhwang91/nvim-hlslens", keys = { "/", "?", "q/", "q?", "*", "#", "g*", "g#", "n", "N" } },
  { "kosayoda/nvim-lightbulb" },
  { "williamboman/nvim-lsp-installer" }, -- simple to use language server installer
  { "romgrk/nvim-treesitter-context", after = "nvim-treesitter" }, -- this is a separate plugin, which requires a separate configuration
  { "nvim-treesitter/nvim-treesitter-refactor", after = "nvim-treesitter" },
  { "nvim-treesitter/nvim-treesitter-textobjects", after = "nvim-treesitter" },
  { "https://gitlab.com/yorickpeterse/nvim-window" },
  { "anuvyklack/pretty-fold.nvim" },
  { "ahmedkhalf/project.nvim" }, -- , event = { "CursorHold" } }
  { "winston0410/range-highlight.nvim", requires = { "winston0410/cmd-parser.nvim", event = "CmdlineEnter" } }, -- , event = { "CmdlineEnter", "CmdwinLeave" } }
  -- { "luukvbaal/stabilize.nvim" },
  { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
  { "folke/trouble.nvim", cmd = { "Trouble", "TroubleClose", "TroubleToggle", "TroubleRefresh" } },
  { "folke/which-key.nvim" }, -- , keys = { "<space>", "z", "c", "v", "d", "g", "<", ">", "@", "y", "\"", "<leader>", "<localleader>", "\\" } }
  { "pianocomposer321/yabs.nvim" },
}
