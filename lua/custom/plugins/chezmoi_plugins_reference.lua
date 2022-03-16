-- vim: ft=lua:foldmarker=(((,))):foldmethod=marker:foldlevelstart=0:shiftwidth=2:softtabstop=2:tabstop=2

-- Core 'packer.startup' lua function to load plugins (((

return packer.startup(function(use)
  -- List of plugins here (((

  -- Other lua plugins (((

  use { "karb94/neoscroll.nvim" }  -- , keys = { "C-d" } }

  

  use { "klen/nvim-config-local" }  -- , event = { "CursorHold" } }
  use { "Shatur/neovim-cmake", ft = { "c", "cpp", "cmake", "fortran" }, requires = { "mfussenegger/nvim-dap" } }
  -- use { "nyngwang/NeoZoom.lua", cmd = { "NeoVSplit", "NeoSplit", "NeoZoomToggle" } }

  -- )))

  -- LSP (((

  use { "neovim/nvim-lspconfig" } -- enable LSP
  use { "williamboman/nvim-lsp-installer" } -- simple to use language server installer
  -- https://pastebin.com/grWDJXVq
  use {
  "jose-elias-alvarez/null-ls.nvim",
  wants = "plenary.nvim",
  cmd = "NullLsLoad",
  module = "null-ls",
  }
  use { "ray-x/lsp_signature.nvim", requires = "kyazdani42/nvim-web-devicons", after = "nvim-lspconfig" } -- event = { "InsertEnter" }, }
  use { "tami5/lspsaga.nvim",  after = "nvim-lspconfig", event = { "CursorHold" } } -- , event = "InsertEnter" })

  
  use { "folke/trouble.nvim", cmd = { "Trouble", "TroubleClose", "TroubleToggle", "TroubleRefresh" } }
  use { "stevearc/aerial.nvim" }  -- , cmd = { "AerialToggle", "AerialToggle!", "AerialOpen", "AerialOpen!", "AerialClose", "AerialPrev", "AerialNext", "AerialPrevUp", "AerialNextUp", "AerialGo", "AerialTreeOpen", "AerialTreeOpen!", "AerialTreeClose", "AerialTreeClose!", "AerialTreeToggle", "AerialTreeToggle!", "AerialTreeOpenAll", "AerialTreeCloseAll", "AerialTreeSyncFolds", "AerialInfo" } }  -- , event = { "CursorHold" } }
  

  -- use { "narutoxy/dim.lua", requires = { "nvim-treesitter/nvim-treesitter", "neovim/nvim-lspconfig" }, }

  -- )))

  use { "folke/which-key.nvim" }  -- , keys = { "<space>", "z", "c", "v", "d", "g", "<", ">", "@", "y", "\"", "<leader>", "<localleader>", "\\" } }

-- )))

end)

-- )))
