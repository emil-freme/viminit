return {
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

    -- Tag navigation
    {
        "majutsushi/tagbar",
        cmd = "TagbarToggle",
    },

}
