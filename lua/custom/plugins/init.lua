-- /lua/custom/plugins/init.lua
return {
  { "tyru/capture.vim", cmd = { "Capture" } },
  { "antoinemadec/FixCursorHold.nvim" }, -- This is needed to fix lsp doc highlight
  { "kenn7/vim-arsync", cmd = { "ARshowConf", "ARsyncUp", "ARsyncUpDelete", "ARsyncDown" } },
  { "jeffkreeftmeijer/vim-numbertoggle", event = "InsertEnter" },
  { "lervag/vimtex", ft = "tex" },
  { "svban/YankAssassin.vim", event = { "CursorHold" } },
  -- { "dstein64/vim-startuptime", cmd = { "StartupTime" } },
  -- { "tweekmonster/startuptime.vim", cmd = { "StartupTime" } },
  -- { "nvim-lua/popup.nvim" }, -- An implementation of the Popup API from vim in Neovim
  { "sudormrfbin/cheatsheet.nvim", cmd = { "Cheatsheet", "CheatsheetEdit" }, },
  { "ellisonleao/glow.nvim", ft = { "markdown", "lsp_markdown", "rmd"}, cmd = { "Glow", "GlowInstall" } },
  { "echasnovski/mini.nvim" },
  { "karb94/neoscroll.nvim" },  -- , keys = { "C-d" } }
  { "Shatur/neovim-cmake", ft = { "c", "cpp", "cmake", "fortran" }, requires = { "mfussenegger/nvim-dap" } },
  { "klen/nvim-config-local" },  -- , event = { "CursorHold" } }
  { "kevinhwang91/nvim-hlslens", keys = { "/", "?", "q/", "q?", "*", "#", "g*", "g#", "n", "N" } },
  { "anuvyklack/pretty-fold.nvim" },
  { "ahmedkhalf/project.nvim" },  -- , event = { "CursorHold" } }
  { "winston0410/range-highlight.nvim",  requires = { "winston0410/cmd-parser.nvim", event = "CmdlineEnter" } }, -- , event = { "CmdlineEnter", "CmdwinLeave" } }
  { "folke/which-key.nvim" },  -- , keys = { "<space>", "z", "c", "v", "d", "g", "<", ">", "@", "y", "\"", "<leader>", "<localleader>", "\\" } }
  { "pianocomposer321/yabs.nvim" },
}
