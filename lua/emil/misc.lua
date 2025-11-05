return {
    -- Keybinding Helper
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
    },

    -- Spellcheck and Grammar
    { "mateusbraga/vim-spell-pt-br", ft = { "markdown", "text" } },
    -- { "dpelle/vim-LanguageTool",     ft = { "markdown", "text" } },

    -- Easy open/close for "parentheses"
    {
        "tpope/vim-surround",
        keys = {
            { "ys" },
            { "ds" },
            { "cs" },
            { "S", mode = "x" }, -- Visual mode surround
        },
    },

    -- Git Gutter Signs
    {
        "mhinz/vim-signify",
        event = "BufReadPre",
    },

    -- Highlight Color Codes
    {
        "brenoprata10/nvim-highlight-colors",
        event = "VeryLazy",
        config = function()
            require("nvim-highlight-colors").setup({})
        end,
    },

    -- Image pasting from clipboard
    {
        "HakonHarnes/img-clip.nvim",
        cmd = "PasteImage", -- Example command, adjust if needed
    },

    -- Git client
    {
      "NeogitOrg/neogit",
          dependencies = {
            "nvim-lua/plenary.nvim", 
        },
    },
    -- Markdown preview
    -- For `plugins.lua` users.
    {
        "OXY2DEV/markview.nvim",
        lazy = false,

        -- Completion for `blink.cmp`
        -- dependencies = { "saghen/blink.cmp" },
    },
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },

}
