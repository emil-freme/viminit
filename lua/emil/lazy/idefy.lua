return {
  { 
    "nvim-treesitter/nvim-treesitter", 
    lazy = false, 
    build = ":TSUpdate", 
    config = function()
      require "nvim-treesitter".setup({
        ensure_installed = { "c", "cpp", "c_sharp", "lua", "python", "markdown" },
        sync_install = false,
        auto_install = true,
        highlight = { 
          enable = true, 
          additional_vim_regex_highlighting = false,
        }, 
      })
    end, 
  },
  { "neovim/nvim-lspconfig" },
  { 
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = { "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip", }, 
  },
  -- Tag navigation 
  { 
    "majutsushi/tagbar", 
    cmd = "TagbarToggle",
  }, 

  { 
    'nvim-telescope/telescope.nvim', 
    version = '*', 
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  { 
    "folke/which-key.nvim", 
    event = "VeryLazy",
  },

}
