-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.options = {
  clipboard = "",
  cmdheight = 2,
  ruler = true,
  smartindent = false,
  tabstop = 2, -- Insert two spaces for a tab
  softtabstop = 2, -- How many spaces to insert with tab key
  infercase = true, -- Ignore case on insert completion. When doing keyword completion in insert mode |ins-completion|, and 'ignorecase' is also on, the case of the match is adjusted depending on the typed text.
  copyindent = true, -- Copy the previous indentation on autoindenting
  preserveindent = true,
  linebreak = true, -- Wrap lines at convenient point (only affects the on-screen display, not actual content in file) -- Break lines at word boundaries
  breakindent = true, -- Every wrapped line will continue visually indented (same amount of space as the beginning of that line), thus preserving horizontal blocks of text.
  updatecount = 100, -- After typing these no. of characters, the swap file will be written to disk. When zero, no swap file will be created at all (see chapter on recovery).
  updatetime = 275, -- milliseconds elapsed before which swap file will be written to disk (250ms is recommended by the gitgutter plugin, 300 ms by coc.nvim). You will have bad experience for diagnostic messages when it's at the default value of 4000 ms. Faster completion.
  -- cursorline = true, -- highlight the current line
  -- cursorlineopt = "number",
  scrolloff = 2, -- Minimal number of screen lines to keep above and below the cursor
  sidescrolloff = 8, -- The minimal number of screen columns to keep to the left and to the right of the cursor
  numberwidth = 4, -- set number column width to 2 {default 4}
  foldlevel = 2, -- Sets the fold level. Folds with a higher level will be closed. Setting this option to zero will close all folds.  Higher numbers will close fewer folds. This option is set by commands like |zm|, |zM| and |zR|. See |fold-foldlevel|.
  foldlevelstart = 2,
  foldcolumn = "auto:5",
  showmatch = true,
  matchtime = 3, -- Tenths of a second to show the matching paren, when 'showmatch' is set.  Note that this is not in milliseconds, like other options that set a time.
  colorcolumn = "121", -- Display text width column
  confirm = true, -- Give me a prompt instead of just rejecting risky :write, :saveas
  guifont = "monospace:h17", -- the font used in graphical neovim applications
  lazyredraw = true, -- Don't redraw the screen during batch execution
  list = true,
  pumheight = 10, -- pop up menu height. Maximum number of items to show in the popup menu (|ins-completion-menu|). Zero means "use available screen space". Default is 0.
  pumwidth = 35,
  report = 0, -- Threshold for reporting number of lines changed.
  winaltkeys = "no",
  -- fillchars = { eob = " " } --, vert="│", diff="⣿", foldopen="▾", foldsep:"│", foldclose="▸" },
}


-- M.ui = {
--    theme = "gruvchad",
-- }

return M
