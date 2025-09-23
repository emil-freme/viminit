local cmp = require("cmp")

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

vim.lsp.config.defaults.capabilities = vim.tbl_deep_extend(
    'force',
    vim.lsp.config.defaults.capabilities,
    require('cmp_nvim_lsp').default_capabilities()
    )

require("emil.lspservers.lua_ls")
require("emil.lspservers.csharp")
require("emil.lspservers.js_ls")

