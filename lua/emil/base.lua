-- Core Settings
do
	vim.loader.enable()
	vim.g.mapleader = ' '
	vim.g.maplocalleader = ' '
	vim.g.have_nerd_font = true
	vim.o.number = true
	vim.o.relativenumber = true
	vim.o.mouse = 'a'
	vim.o.breakindent = true
	vim.o.undofile = true
	vim.o.signcolumn = 'yes'
	vim.o.updatetime = 250
	vim.o.splitright = true
	vim.o.splitbelow = true
	vim.o.cursorline = true
	vim.o.scrolloff = 5
	vim.o.confirm = true
	vim.o.expandtab = true
	vim.o.tabstop = 2
	vim.o.softtabstop = 2
	vim.o.shiftwidth = 2
  vim.o.textwidth = 80 
  vim.opt.colorcolumn = {80, 120}
  vim.opt.listchars = { eol = "↩" , space = "·", tab = "↝ ", trail = "‿" }
  vim.o.termguicolors = true
  vim.o.filetype = 'unix'
  vim.o.fileencoding = 'utf-8'
  vim.o.encoding = 'utf-8'
  vim.opt.guifont         = {"JetBrainsMono Nerd Font", ":h14"};
  vim.cmd.colorscheme("pastel-peach-dark")
end

-- Base Keymaps

do
-- Autosave keep line
  vim.keymap.set('i', '<ESC>', '<ESC> :w<CR>k')

	vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

	vim.diagnostic.config {
		update_in_insert = false,
		float = { border = 'rounded', source = 'if_many' },

		virtual_text = false,
		virtual_lines = true,
	}

	vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open [Q]uickfix' } )

	vim.keymap.set('n', '<A-h>', '<C-w><C-h>', { desc = 'Move focus left' })
	vim.keymap.set('n', '<A-l>', '<C-w><C-l>', { desc = 'Move focus right' })
	vim.keymap.set('n', '<A-j>', '<C-w><C-j>', { desc = 'Move focus down' })
	vim.keymap.set('n', '<A-k>', '<C-w><C-k>', { desc = 'Move focus up' })
end

-- Netrw Settings
do
  vim.g.netrw_liststyle = 3
  vim.g.netrw_preview = 1
end

