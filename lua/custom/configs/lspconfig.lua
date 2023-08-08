local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.metals.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetype = {"scala"},
  root_dir = lspconfig.util.root_pattern("build.sbt"),
}

lspconfig.rust_analyzer.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    ['rust-analyzer'] = {
      diagnostics = {
        enable = true;
      }
    }
  }
}

lspconfig.hls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "haskell-language-server-wrapper", "--lsp" },
  filetypes = { 'haskell', 'lhaskell', 'cabal' },
}

-- 
-- lspconfig.pyright.setup { blabla}
