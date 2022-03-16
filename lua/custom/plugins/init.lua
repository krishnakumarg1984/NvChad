-- /lua/custom/plugins/init.lua
return {
  { "jeffkreeftmeijer/vim-numbertoggle", event = "InsertEnter" },
  { "svban/YankAssassin.vim", event = { "CursorHold" } },
  { "tyru/capture.vim", cmd = { "Capture" } },
  { 'kenn7/vim-arsync', cmd = { "ARshowConf", "ARsyncUp", "ARsyncUpDelete", "ARsyncDown" } },
  { "ahmedkhalf/project.nvim" },  -- , event = { "CursorHold" } }
  { "antoinemadec/FixCursorHold.nvim" }, -- This is needed to fix lsp doc highlight
  { "anuvyklack/pretty-fold.nvim" },
  { "ellisonleao/glow.nvim", ft = { "markdown", "lsp_markdown", "rmd"}, cmd = { "Glow", "GlowInstall" } },
  { "kevinhwang91/nvim-hlslens", keys = { "/", "?", "q/", "q?", "*", "#", "g*", "g#" } },
  { "sudormrfbin/cheatsheet.nvim", cmd = { "Cheatsheet", "CheatsheetEdit" }, },
  { "winston0410/range-highlight.nvim",  requires = { "winston0410/cmd-parser.nvim", event = "CmdlineEnter" } }, -- , event = { "CmdlineEnter", "CmdwinLeave" } }
}
