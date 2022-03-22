-- vim: foldmarker=(((,))):foldmethod=marker:foldlevel=0:shiftwidth=2:softtabstop=2:tabstop=2

local M = {}

M.setup_lsp = function(attach, capabilities)

  -- Protected call to lspconfig (((

  local status_ok, _ = pcall(require, "lspconfig")
  if not status_ok then
    return
  end

  -- )))

  require "custom.plugins.lsp.lsp-installer"
  -- require "user.lsp.lspsaga"
  require("custom.plugins.lsp.handlers").setup()
  -- require "user.lsp.null-ls"
end

return M
