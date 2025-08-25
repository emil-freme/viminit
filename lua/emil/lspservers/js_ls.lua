local nvim_lsp = require('lspconfig')

nvim_lsp.ts_ls.setup {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  on_attach = function(client, bufnr)
    -- Optional: disable tsserver formatting if you use external formatter like prettier
    client.server_capabilities.documentFormattingProvider = false
    -- Setup keymaps, etc.
  end,
}
