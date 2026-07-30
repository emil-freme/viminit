do
  vim.lsp.enable({'pyright', 'clangd'})
  local cmp = require('cmp')
  
  cmp.setup({
      sources = {
          {name = "path" },
          {name = 'nvim_lsp'},
          {name = "luasnip"},
          {name = "buffer"},
      },
      mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
  })

  vim.lsp.config('*', {
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
})
end
