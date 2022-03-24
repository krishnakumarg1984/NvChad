-- vim: foldmarker=(((,))):foldmethod=marker:foldlevel=0:shiftwidth=2:softtabstop=2:tabstop=2

local status_ok, lsp_signature = pcall(require, "lsp_signature")
if not status_ok then
  return
end

lsp_signature.setup {
  doc_lines = 7,
  max_height = 10, -- max height of signature floating_window, if content is more than max_height, you can scroll down to view the hiding contents
  auto_close_after = 15, -- close after 15 seconds
}
