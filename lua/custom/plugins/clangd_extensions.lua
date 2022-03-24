-- vim: foldmarker=(((,))):foldmethod=marker:foldlevel=0:shiftwidth=2:softtabstop=2:tabstop=2

local status_ok, clangd_extensions = pcall(require, "clangd_extensions")
if not status_ok then
  return
end

local lsp_handlers_present, lsp_handlers = pcall(require, "custom.plugins.lsp.handlers")
lsp_handlers.custom_setup()
Custom_on_attach = lsp_handlers.on_attach
local opts = {
  on_attach = Custom_on_attach,
  capabilities = capabilities,
  flags = {
    debounce_text_changes = 150,
  },
  settings = {},
}

clangd_extensions.setup {
  server = {},
}
