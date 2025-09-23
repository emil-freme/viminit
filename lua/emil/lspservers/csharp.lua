vim.lsp.config("csharp_ls", {
    settings = {
        fileExclusion = {
            patterns = {
                "Library/*",
                "Temp/*",
            },
        },
    },
})

vim.lsp.enable("csharp_ls")

