return {
  { 'emil-freme/PastelPeach-vim' },
  { 
    'vim-airline/vim-airline', 
    event = 'VeryLazy', 
    dependencies = { 'vim-airline/vim-airline-themes' },
    init = function()
      require('emil.plugins.airline')
    end,
  },
  {
    'casedami/focus.nvim',
    opts = { window = { width = 90 } }
  }
}
