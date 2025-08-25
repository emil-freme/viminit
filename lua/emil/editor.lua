vim.opt.number          = true;
vim.opt.relativenumber 	= true;
vim.opt.expandtab       = true;
vim.opt.tabstop         = 4;
vim.opt.shiftwidth      = 4;
vim.opt.softtabstop     = 4;
vim.opt.colorcolumn     = {81, 120};
vim.opt.textwidth       = 80;
vim.opt.guifont         = {"JetBrainsMono Nerd Font", ":h14"};
vim.opt.listchars       = { eol = "↩" , space = "·", tab = "↝↝", trail = "‿" };
vim.opt.signcolumn      = "yes"
vim.opt.termguicolors   = true;
vim.opt.cursorline      = true;
vim.opt.scrolloff       = 5;
vim.cmd([[colorscheme peachpuff]]);


vim.g.netrw_liststyle = 3;
vim.g.netrw_list_hide = ".meta";



