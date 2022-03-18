-- /lua/custom/plugins/init.lua
return {
  { "jeffkreeftmeijer/vim-numbertoggle", event = "InsertEnter" },
  { "kenn7/vim-arsync", cmd = { "ARshowConf", "ARsyncUp", "ARsyncUpDelete", "ARsyncDown" } },
  { "lervag/vimtex", ft = "tex" },
  { "svban/YankAssassin.vim", event = { "CursorHold" } },
  { "tyru/capture.vim", cmd = { "Capture" } },
  -- { "dstein64/vim-startuptime", cmd = { "StartupTime" } },
  -- { "tweekmonster/startuptime.vim", cmd = { "StartupTime" } },
  -- { "nvim-lua/popup.nvim" }, -- An implementation of the Popup API from vim in Neovim
  { "ahmedkhalf/project.nvim" },  -- , event = { "CursorHold" } }
  { "pianocomposer321/yabs.nvim" },
  { "antoinemadec/FixCursorHold.nvim" }, -- This is needed to fix lsp doc highlight
  { "anuvyklack/pretty-fold.nvim" },
  { "ellisonleao/glow.nvim", ft = { "markdown", "lsp_markdown", "rmd"}, cmd = { "Glow", "GlowInstall" } },
  { "kevinhwang91/nvim-hlslens", keys = { "/", "?", "q/", "q?", "*", "#", "g*", "g#", "n", "N" } },
  { "sudormrfbin/cheatsheet.nvim", cmd = { "Cheatsheet", "CheatsheetEdit" }, },
  { "winston0410/range-highlight.nvim",  requires = { "winston0410/cmd-parser.nvim", event = "CmdlineEnter" } }, -- , event = { "CmdlineEnter", "CmdwinLeave" } }
  { 'echasnovski/mini.nvim' },
}
