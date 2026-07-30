-- LSP 
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = {buffer = event.buf}

    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { buffer = event.buf, desc = 'Go to [P]revious [D]iagnostic' })
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { buffer = event.buf, desc = 'Go to [N]ext [D]iagnostic' })
  end,
})

-- Focus
vim.api.nvim_set_keymap("n", "<leader>zn", ":Focus<CR>", {})
vim.api.nvim_set_keymap("v", "<leader>zn", ":'<,'>Narrow<CR>:Focus<CR>", {})

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind by [G]rep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[F]ind [B]uffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind [H]elp' })

-- Themes
vim.api.nvim_set_keymap("n", "<leader>t1", ":colorscheme pastel-peach<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>t2", ":colorscheme pastel-peach-dark<CR>", {})

-- Tagbar
vim.keymap.set('n', '<leader>tb', ':TagbarToggle<CR>', { desc = '[T]oggle [B]ar' })

-- img-clip (Paste Image)
vim.keymap.set('n', '<leader>pi', ':PasteImage<CR>', { desc = '[P]aste [I]mage' })

