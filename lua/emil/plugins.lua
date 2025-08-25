return {
--Spellcheck ptbr
{ "mateusbraga/vim-spell-pt-br" },
{ 'dpelle/vim-LanguageTool' },

--Themes
{ "nanotech/jellybeans.vim" },

-- StatusLine
{ "vim-airline/vim-airline" },
{ "vim-airline/vim-airline-themes" },

--Better Colors
{ "nvim-treesitter/nvim-treesitter" },

--LSP Config
{
  'williamboman/mason.nvim',
--  config = function()
--    require('mason').setup()
--  end,
},
{
  'williamboman/mason-lspconfig.nvim',
--  dependencies = { 'williamboman/mason.nvim' },
--   config = function()
--       require('mason-lspconfig').setup({
--         automatic_installation = true,
--       })
--     end,
},
{ 'neovim/nvim-lspconfig' },
{ 'hrsh7th/nvim-cmp' },
{ 'hrsh7th/cmp-nvim-lsp' },
{ 'L3MON4D3/LuaSnip' },

--Other
{ 'tpope/vim-surround' }, -- Easy open close "parentheses" 
{ 'majutsushi/tagbar' },  -- Tag navigation 
{ 'folke/which-key.nvim' }, -- Key Helper 
{ 'junegunn/goyo.vim' },
{ 'HakonHarnes/img-clip.nvim' },
{ 'mhinz/vim-signify' }
}
