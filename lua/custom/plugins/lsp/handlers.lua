-- vim: foldmarker=(((,))):foldmethod=marker:foldlevel=0:shiftwidth=2:softtabstop=2:tabstop=2

local M = {}

-- setup() function (((

-- TODO: backfill this to template
M.setup = function()
  -- local 'config' table (((
  local config = {
    -- disable virtual text
    virtual_text = false,
    update_in_insert = false,
    underline = true,
    severity_sort = true,
    float = {
      focusable = false,
      style = "minimal",
      border = "rounded",
      source = "always",
      header = "",
      prefix = "",
    },
  }

  vim.diagnostic.config(config)

  -- )))

  -- textDocument/hover (((

  vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = "rounded",
  })

  -- )))

  -- textDocument/signatureHelp (((

  vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    border = "rounded",
  })

  -- )))
end

-- )))

-- lsp_highlight_document() function (((

local function lsp_highlight_document(client)
  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec(
      [[
    augroup lsp_document_highlight
    autocmd! * <buffer>
    autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
    autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
    augroup END
    ]],
      false
    )
  end
end

-- )))

-- on_attach() function (((

M.on_attach = function(client, bufnr)
  if client.name == "tsserver" or client.name == "clangd" or client.name == "jsonls" or client.name == "cmake" then
    client.resolved_capabilities.document_formatting = false
  end
  lsp_highlight_document(client)
end

-- )))

return M
