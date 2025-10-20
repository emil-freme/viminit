return {
    -- General Themes
    { "nanotech/jellybeans.vim" },
    { "emil-freme/PastelPeach-vim" },
    --Statusline
    {
        "vim-airline/vim-airline",
        event = "VeryLazy",
        dependencies = { "vim-airline/vim-airline-themes" },
        init = function()
            require("emil.airline")
        end,
    },
    -- Zenmode focus
    {
        "casedami/focus.nvim",
        cmd = { "Focus", "Zen", "Narrow" },
        opts = {
            window = {
                width = 85,
            },
        },
    },
}
