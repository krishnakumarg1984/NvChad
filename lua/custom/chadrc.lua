-- Just an example, supposed to be placed in /lua/custom/

local M = {}

M.options = {
  mapleader = ",",
}

-- make sure you maintain the structure of `core/default_config.lua` here,

M.ui = {
  -- theme = "everblush",
  theme = "tomorrow-night",
  italic_comments = true,
}

local default_plugins_to_keep = {
  better_escape = false,
}

M.plugins = {
  status = default_plugins_to_keep,
}

local custom_plugins_present, userPlugins = pcall(require, "custom.plugins")
if custom_plugins_present then
  M.plugins = {
    status = default_plugins_to_keep,
    install = userPlugins,
  }
end


M.mappings = {
   misc = {
      close_buffer = "",
      cp_whole_file = "", -- copy all contents of current buffer
      lineNR_toggle = "", -- toggle line number
      lineNR_rel_toggle = "",
      new_buffer = "",
      new_tab = "",
      save_file = "", -- save file using :w
   },

   -- better window movement
   window_nav = {
      moveLeft = "<A-h>",
      moveRight = "<A-l>",
      moveUp = "<A-k>",
      moveDown = "<A-j>",
   },

   -- terminal related mappings
   terminal = {
      -- multiple mappings can be given for esc_termmode, esc_hide_termmode

      -- get out of terminal mode
      esc_termmode = { "<ESC>" },

      -- get out of terminal mode and hide it
      esc_hide_termmode = { "JK" },
      -- show & recover hidden terminal buffers in a telescope picker
      pick_term = "<leader>TT",

      -- spawn terminals
      new_horizontal = "<leader>Th",
      new_vertical = "<leader>Tv",
      new_window = "<leader>Tw",
   },
}

M.mappings.plugins = {
  comment = {
    toggle = "gc",
  },
}

return M
