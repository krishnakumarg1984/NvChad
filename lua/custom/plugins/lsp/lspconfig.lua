-- vim: foldmarker=(((,))):foldmethod=marker:foldlevel=0:shiftwidth=2:softtabstop=2:tabstop=2

local M = {}

M.setup_lsp = function(attach, capabilities)
  local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
  if not status_ok then
    return M
  end

  lsp_installer.settings {
    ui = {
      icons = {
        server_installed = "﫟",
        server_pending = "",
        server_uninstalled = "✗",
      },
    },
  }

  lsp_installer.on_server_ready(function(server)
    local lsp_handlers_present, lsp_handlers = pcall(require, "custom.plugins.lsp.handlers")
    lsp_handlers.setup()
    if lsp_handlers_present then
      Custom_on_attach = lsp_handlers.on_attach
    else
      Custom_on_attach = attach
    end
    local opts = {
      on_attach = Custom_on_attach,
      capabilities = capabilities,
      flags = {
        debounce_text_changes = 150,
      },
      settings = {},
    }

    if server.name == "clangd" then
      -- NOTE: Workaround for "warning: multiple different client offset_encodings detected for buffer, this is not supported yet".
      -- Ref: https://github.com/jose-elias-alvarez/null-ls.nvim/issues/428#issuecomment-997226723
      -- https://github.com/mars90226/dotvim/commit/8469adf6c750d4c38a96cbd2434802adaec9d728
      opts.capabilities.offsetEncoding = { "utf-16" }
      opts.capabilities.memoryUsageProvider = true
    end

    -- if server.name == "jsonls" then
    --   local jsonls_opts = require("custom.plugins.lsp.settings.jsonls")
    --   opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
    -- end

    if server.name == "sumneko_lua" then
      local sumneko_opts = require "custom.plugins.lsp.settings.sumneko_lua"
      opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
    end

    server:setup(opts)
    vim.cmd [[ do User LspAttachBuffers ]]
  end)

  local function install_server(server)
    local lsp_installer_servers = require "nvim-lsp-installer.servers"
    local server_available, requested_server = lsp_installer_servers.get_server(server)
    if server_available then
      if not requested_server:is_installed() then
        -- Queue the server to be installed
        requested_server:install() -- the install window shall pop up
        -- requested_server:install(server) -- will install in background
      end
    end
  end

  -- Enable some language servers with the additional completion capabilities offered by nvim-cmp
  local servers = {
    "c",
    "cmake",
    "esbonio",
    "fortls",
    "opencl_ls",
    "sumneko_lua",
    "texlab",
    "zk",
    -- "ansiblels",
    -- "bashls", -- requires nodejs
    -- "clangd", -- requires a reasonably new version of glibc
    -- "dockerls",  -- requires nodejs
    -- "dotls", -- requires nodejs
    -- "ltex", -- slow to install on remote systems
    -- "pyright", -- requires nodejs
    -- "vimls", -- requires nodejs
    -- "yamlls", -- requires nodejs
  }

  -- install the language servers
  for _, server in ipairs(servers) do
    install_server(server)
  end
end

return M
