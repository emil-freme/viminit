return {

    ---------------------------------------------------
    -- ## UI & Theming ##
    ---------------------------------------------------

    -- Theme
    { "nanotech/jellybeans.vim" },

    -- StatusLine
    {
        "vim-airline/vim-airline",
        event = "VeryLazy",
        dependencies = { "vim-airline/vim-airline-themes" },
        init = function()
            require("emil.airline")
        end,
    },

    -- Keybinding Helper
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
    },

    ---------------------------------------------------
    -- ## Language, Syntax & Completion ##
    ---------------------------------------------------

    -- Syntax Highlighting Engine
    {
        "nvim-treesitter/nvim-treesitter",
        event = "BufReadPre",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
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

    -- Language Server Protocol (LSP) & Mason
    { "mason-org/mason.nvim",
        build = ":MasonUpdate",
        config = function()
            require("mason").setup()
        end,
    },
    { "neovim/nvim-lspconfig",
        event = "BufReadPre",
        dependencies = {"mason-org/mason.nvim"},
    },
    {
        "mason-org/mason-lspconfig.nvim",
        event = "BufReadPre",
        opts = {
            automatic_installation = true, -- Changed to true for convenience
        },
        dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
    },

    -- Autocompletion Engine
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "L3MON4D3/LuaSnip",
        },
    },

    -- Spellcheck and Grammar
    { "mateusbraga/vim-spell-pt-br", ft = { "markdown", "text" } },
    { "dpelle/vim-LanguageTool",     ft = { "markdown", "text" } },

    ---------------------------------------------------
    -- ## Editing Enhancements ##
    ---------------------------------------------------

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

    ---------------------------------------------------
    -- ## Utility & Other ##
    ---------------------------------------------------

    -- Tag navigation
    {
        "majutsushi/tagbar",
        cmd = "TagbarToggle",
    },

    -- Distraction-free writing
    {
        "cdmill/focus.nvim",
        cmd = { "Focus", "Zen", "Narrow" },
        opts = {
            window = {
                width = 82,
            },
        },
    },

    -- Image pasting from clipboard
    {
        "HakonHarnes/img-clip.nvim",
        cmd = "PasteImage", -- Example command, adjust if needed
    },

}
