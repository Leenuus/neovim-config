options = {
	cmdheight = 4, -- more space in the neovim command line for displaying messages
	guifont = "monospace:h17", -- the font used in graphical neovim applications
	shiftwidth = 4, -- the number of spaces inserted for each indentation
	tabstop = 4, -- insert 2 spaces for a tab
	wrap = true, -- wrap lines
	scrolloff = 12, -- wrap lines
	foldmethod = "expr", -- use treesitter folding
	mouse = nil, -- wrap lines
	ignorecase = true,
	smartindent =  true,
	smarttab = true,
	incsearch = true,
	shell = "/bin/bash",
}

vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd('set clipboard+=unnamedplus')

return options
