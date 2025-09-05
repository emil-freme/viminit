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
{ "nvim-treesitter/nvim-treesitter",
    config = function()
        require'nvim-treesitter.configs'.setup ({
            ensure_installed = {"c", "cpp", "c_sharp", "lua", "python", "markdown"},
            sync_install = false,
            auto_install=true,

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        })
    end,
},

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
{ 'brenoprata10/nvim-highlight-colors',
    config = function()
        require('nvim-highlight-colors').setup({})
    end,
},
{ 'HakonHarnes/img-clip.nvim' },
{ 'mhinz/vim-signify' },
{
  "cdmill/focus.nvim",
  cmd = { "Focus", "Zen", "Narrow" },
  opts = {
      window = {
        width = 82,
    },
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
}
}
