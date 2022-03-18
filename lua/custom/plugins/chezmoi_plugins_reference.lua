-- vim: ft=lua:foldmarker=(((,))):foldmethod=marker:foldlevelstart=0:shiftwidth=2:softtabstop=2:tabstop=2

-- Core 'packer.startup' lua function to load plugins (((

return packer.startup(function(use)
  -- List of plugins here (((

  -- Treesitter & related plugins (((

  use { "nvim-treesitter/nvim-treesitter-refactor", after = { "nvim-treesitter" }, }
  use { "nvim-treesitter/nvim-treesitter-textobjects", after = { "nvim-treesitter" }, }
  use { "romgrk/nvim-treesitter-context", after = { "nvim-treesitter" } }
  use { "JoosepAlviste/nvim-ts-context-commentstring", after = { "nvim-treesitter" } }
  -- https://github.com/David-Kunz/treesitter-unit/

  -- )))

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

  use { "machakann/vim-sandwich", keys = { "sa", "sr", "sd" } }
  use { "tpope/vim-repeat", after = { "vim-sandwich" } }
  use { "tyru/capture.vim", cmd = { "Capture" } }

  -- use { "dstein64/vim-startuptime", cmd = { "StartupTime" } }
  -- use { "tweekmonster/startuptime.vim", cmd = { "StartupTime" } }

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

  use { "antoinemadec/FixCursorHold.nvim" } -- This is needed to fix lsp doc highlight
  use { "nathom/filetype.nvim" }
  use { "ahmedkhalf/project.nvim" }  -- , event = { "CursorHold" } }
  use { "kyazdani42/nvim-web-devicons" }
  use { "kyazdani42/nvim-tree.lua" }  -- , cmd = { "NvimTreeToggle", "NvimTreeRefresh", "NvimTreeFindFile", "NvimTreeOpen", "NvimTreeClose", "NvimTreeFocus", "NvimTreeFindFileToggle", "NvimTreeResize", "NvimTreeCollapse", "NvimTreeCollapseKeepBuffers" } }
  use { "akinsho/toggleterm.nvim", cmd = { "ToggleTerm", "ToggleTermToggleAll", "TermExec" } }

  
  use { "lukas-reineke/indent-blankline.nvim" }  --, cmd = { "IndentBlanklineEnable", "IndentBlanklineDisable", "IndentBlanklineToggle", "IndentBlanklineRefresh", "IndentBlanklineRefreshScroll", }, } -- slow plugin (try and restrict to a few filetypes)
  use { "nvim-lualine/lualine.nvim" }  --, event = { "CursorHold" } }
  use { "kevinhwang91/nvim-hlslens", keys = { "/", "?", "q/", "q?", "*", "#", "g*", "g#" } }

  -- Telescope (((

  use { "nvim-telescope/telescope.nvim" } -- , cmd = { "Telescope" } }  --, event = { "CursorHold" } }

  -- cheatsheet.nvim (((
  use {
    "sudormrfbin/cheatsheet.nvim",
    requires = {
      { "nvim-telescope/telescope.nvim" },
      { "nvim-lua/popup.nvim" },
      { "nvim-lua/plenary.nvim" },
    },
    cmd = { "Cheatsheet", "CheatsheetEdit" },
  }
  -- )))

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

  -- telescope-fzf-native (((
  use {
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "make",
    requires = { { "nvim-telescope/telescope.nvim" }, { "nvim-lua/plenary.nvim" } },
    -- after = { "telescope.nvim" }
  }
  -- )))

  -- )))

  -- Git (((

  use "lewis6991/gitsigns.nvim"

  -- )))

  use { "ellisonleao/glow.nvim", ft = { "md", "Rmd", "rmarkdown", "Rmarkdown" }, cmd = { "Glow", "GlowInstall" } }
  use { "anuvyklack/pretty-fold.nvim" }
  use { "winston0410/range-highlight.nvim",  requires = { "winston0410/cmd-parser.nvim", event = "CmdlineEnter" } } -- , event = { "CmdlineEnter", "CmdwinLeave" } }
  use { "karb94/neoscroll.nvim" }  -- , keys = { "C-d" } }

  

  use { "klen/nvim-config-local" }  -- , event = { "CursorHold" } }
  use { "Shatur/neovim-cmake", ft = { "c", "cpp", "cmake", "fortran" }, requires = { "mfussenegger/nvim-dap" } }
  -- use { "nyngwang/NeoZoom.lua", cmd = { "NeoVSplit", "NeoSplit", "NeoZoomToggle" } }

  -- )))

  -- Autocompletion and snippets support (((

  use { "L3MON4D3/LuaSnip" } -- , event = "InsertEnter" } -- snippet engine
  -- https://github.com/akinsho/dotfiles/blob/main/.config/nvim/lua/as/plugins/init.lua
  use { "hrsh7th/nvim-cmp" }  -- , module = 'cmp', event = 'InsertEnter' } -- The completion plugin
  use { "hrsh7th/cmp-path" } -- path completions
  use { "hrsh7th/cmp-buffer" } -- buffer completions
  use { "hrsh7th/cmp-cmdline" } -- cmdline completions
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "hrsh7th/cmp-nvim-lua" }
  use { "quangnguyen30192/cmp-nvim-tags" }
  use { "rafamadriz/friendly-snippets" } -- a bunch of snippets to use
  use { "saadparwaiz1/cmp_luasnip" } -- , event = "InsertEnter" } -- snippet completions
  use { "windwp/nvim-autopairs", after = "nvim-cmp" }  --, event = { "CursorHold" } } --, event = "InsertEnter" } -- , after = "nvim-cmp" } -- Autopairs, integrates with both cmp (and treesitter?)

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

  -- Automatically set up your configuration after cloning packer.nvim (((

  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end

  -- )))
end)

-- )))

-- Commented-out section (((

-- Note-taking systems, Documentation generators, to-do systems (((

--[[

Personal wiki/notes
-------------------
https://github.com/mickael-menu/zk + https://github.com/mickael-menu/zk-nvim  (others: https://github.com/terror/zk, https://github.com/sirupsen/zk)
https://github.com/xwmx/nb
mkdocs material
zeta-note (markdown lsp server)
org-mode (with org-roam)
Markdown + https://github.com/jakewvincent/mkdnflow.nvim + Markor on android + syncthing (or another service to sync)
vim-wiki (is vimscript)
wiki.vim
https://github.com/srid/emanote
neorg
https://github.com/oberblastmeister/neuron.nvim (neuron is deprecated and succeeded by emanote)

ToDo
----
todotxt.org
taskwarrior (taskwiki + vimwiki)

Time tracking
-------------
Timewarrior

Other proprietary systems
-------------------------
google keep (proprietary)
]]

-- )))

-- Other interesting vim plugins (((

-- ipython/jupyter vim plugins (((

-- use "goerz/jupytext.vim"
-- use { 'dccsillag/magma-nvim', run = ':UpdateRemotePlugins' } -- need to set up mappings
-- use("bfredl/nvim-ipy")
-- use("jupyter-vim/jupyter-vim")
-- use("untitled-ai/jupyter_ascending")
-- use({ "hanschen/vim-ipython-cell", requires = { "jpalardy/vim-slime" } })

-- )))

-- Pre-filled out packer calls (((

-- use { "akinsho/bufferline.nvim" }
-- use { "andersevenrud/cmp-tmux" }
-- use { "andymass/vim-matchup", event = "BufWinEnter" }
-- use { "blackCauldron7/surround.nvim" }
-- use { "chentau/marks.nvim", keys = { "m", "dm" }, cmd = { "MarksToggleSigns", "MarksListBuf", "MarksListGlobal", "MarksListAll", "MarksQFListBuf", "MarksQFListGlobal", "MarksQFListAll" } }
-- use { "chipsenkbeil/distant.nvim" }
-- use { "cljoly/telescope-repo.nvim" }
-- use { "famiu/bufdelete.nvim", cmd = { "Bdelete", "Bwipeout" } }
-- use { "folke/todo-comments.nvim" } -- :ToDoQuickFix, :ToDoTrouble, :ToDoTelescope,
-- use { "folke/twilight.nvim", cmd = { "ZenMode", "Twilight", "TwilightEnable" } }
-- use { "folke/zen-mode.nvim", cmd = "ZenMode" }
-- use { "gauteh/vim-cppman", ft = { "c", "cpp" }, cmd = { "Cppman" } }
-- use { "ggandor/lightspeed.nvim", requires = "tpope/vim-repeat", }
-- use { "goolord/alpha-nvim" }
-- use { "https://gitlab.com/yorickpeterse/nvim-dd", event = { "CursorHold" } }
-- use { "https://gitlab.com/yorickpeterse/nvim-pqf" }
-- use { "https://gitlab.com/yorickpeterse/nvim-pqf", event = { "QuickFixCmdPre", "QuickFixCmdPost" } }
-- use { "ii14/exrc.vim" } -- "jenterkin/vim-autosource", "embear/vim-localvimrc", "LucHermitte/local_vimrc", "thinca/vim-localrc"
-- use { "j-hui/fidget.nvim" }
-- use { "kazhala/close-buffers.nvim", cmd = {} }
-- use { "kevinhwang91/nvim-bqf", ft = "qf", event = { "CursorHold" } }
-- use { "Konfekt/FastFold" }
-- use { "Konfekt/vim-sentence-chopper" }
-- use { "kosayoda/nvim-lightbulb" }
-- use { "kwkarlwang/bufresize.nvim" }
-- use { "ldelossa/litee-calltree.nvim", requires = { "ldelossa/litee.nvim" } }
-- use { "lewis6991/spellsitter.nvim" }
-- use { "ludovicchabant/vim-gutentags", event = { "CursorHold" } } -- , event = "BufWinEnter" }
-- use { "luukvbaal/stabilize.nvim" }
-- use { "mfussenegger/nvim-lint" }
-- use { "mg979/tasks.vim" }
-- use { "mizlan/iswap.nvim", requires = { { "nvim-treesitter" } } }
-- use { "norcalli/nvim-colorizer.lua" }
-- use { "ntpeters/vim-better-whitespace" }
-- use { "numtostr/BufOnly.nvim", cmd = { "BufOnly" } }
-- use { "nvim-telescope/telescope-media-files.nvim" }
-- use { "nvim-telescope/telescope-packer.nvim" }
-- use { "nyngwang/NeoZoom.lua" }
-- use { "onsails/lspkind-nvim" }
-- use { "petertriho/nvim-scrollbar" }
-- use { "petRUShka/vim-opencl", ft = { "opencl" } }  -- note: slow plugin on remote systems
-- use { "puremourning/vimspector", fn = "vimspector#Launch", disable = false }
-- use { "rmagatti/goto-preview", event = { "CursorHold" } }
-- use { "s1n7ax/nvim-comment-frame" }
-- use { "scrooloose/vim-slumlord", requires = { { "aklt/plantuml-syntax" }, { "tyru/open-browser.vim" } } } -- also a telescope extension
-- use { "sgur/vim-editorconfig", event = "BufWinEnter" }
-- use { "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" }
-- use { "stevearc/dressing.nvim" }
-- use { "TimUntersberger/neogit", cmd = { "Neogit" } }
-- use { "tpope/vim-fugitive", event = "BufWinEnter" }
-- use { "tpope/vim-unimpaired", event = "BufWinEnter" }
-- use { "tweekmonster/wstrip.vim" }
-- use { "tyru/open-browser.vim", event = "BufWinEnter" }
-- use { "urbainvaes/vim-ripple" }
-- use { "weirongxu/plantuml-previewer.vim", requires = { { "aklt/plantuml-syntax" }, { "tyru/open-browser.vim" } } }
-- use { "wellle/targets.vim" }
-- use { "wsdjeg/vim-assembly" }

-- )))

-- www links to other interesting plugins (((

-- https://git.sr.ht/~whynothugo/lsp_lines.nvim
-- https://github.com/4513ECHO/vim-readme-viewer
-- https://github.com/abecodes/tabout.nvim
-- https://github.com/anufrievroman/vim-angry-reviewer
-- https://github.com/beauwilliams/focus.nvim
-- https://github.com/bennypowers/nvim-regexplainer
-- https://github.com/booperlv/nvim-gomove
-- https://github.com/brymer-meneses/grammar-guard.nvim
-- https://github.com/dhruvasagar/vim-buffer-history
-- https://github.com/elihunter173/dirbuf.nvim
-- https://github.com/Furkanzmc/firvish.nvim
-- https://github.com/gbprod/substitute.nvim
-- https://github.com/iamcco/markdown-preview.nvim
-- https://github.com/jalvesaq/zotcite
-- https://github.com/jceb/blinds.nvim
-- https://github.com/JoseConseco/vim-case-change
-- https://github.com/Julian/vim-textobj-variable-segment
-- https://github.com/kamykn/spelunker.vim
-- https://github.com/kitten/prosemd-lsp
-- https://github.com/lukas-reineke/lsp-format.nvim
-- https://github.com/marklcrns/vim-smartq
-- https://github.com/monaqa/dial.nvim
-- https://github.com/NMAC427/guess-indent.nvim
-- https://github.com/nyngwang/NeoNoName.lua
-- https://github.com/ojroques/vim-oscyank
-- https://github.com/Pocco81/MerelyFmt.nvim/tree/dev
-- https://github.com/rcarriga/vim-ultest
-- https://github.com/rlane/pounce.nvim
-- https://github.com/ruifm/gitlinker.nvim
-- https://github.com/Sangdol/mintabline.vim
-- https://github.com/sindrets/winshift.nvim
-- https://github.com/stefandtw/quickfix-reflector.vim
-- https://github.com/svermeulen/vim-subversive
-- https://github.com/TC72/telescope-tele-tabby.nvim
-- https://github.com/ThePrimeagen/git-worktree.nvim/
-- https://github.com/tpope/vim-apathy

-- )))

-- )))

-- )))
