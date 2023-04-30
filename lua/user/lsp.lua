local configs = require('lspconfig/configs')

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local cmp_nvim_lsp = require("cmp_nvim_lsp")
capabilities = cmp_nvim_lsp.default_capabilities(capabilities)


local lspconfig = require "lspconfig"
local util = lspconfig.util
local on_attach = function(client)
  if client.name == "tsserver" then
    client.server_capabilities.document_formatting = false
  end
end

lspconfig.cssmodules_ls.setup {
  filetypes = { "css", "scss", "eruby", "html", "tsx", "javascript", "javascriptreact", "less", "sass", "scss", "svelte",
    "pug",
    "typescriptreact", "vue" },

  on_attach = on_attach,
  capabilities = capabilities
}

lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

-- lspconfig.tailwindcss.setup {
--   root_dir = util.root_pattern('tailwind.config.js', 'tailwind.config.ts')
-- }
