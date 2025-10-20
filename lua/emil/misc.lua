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

}
