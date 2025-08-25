local lspconfig = require("lspconfig")

lspconfig.csharp_ls.setup({
        settings = {
            fileExclusion = {
                patterns = {
                  "Library/*",
                  "Temp/*",
              },
          },
      },
  })
