local options = {
	number = true,
	relativenumber = true,
	cmdheight = 1,
	hlsearch = true,
	ignorecase = false,
	showmode = false,
	smartindent = true,
	swapfile = false,
	undofile = true,
	shiftwidth = 4,
	tabstop = 4,
	cursorline = false,
	numberwidth = 2,
	wrap = false,
	guifont = "terminus:h18",
	termguicolors = true,
	background = "dark",
	scrolloff = 8,
}

vim.syntax = "enable"
vim.colorscheme = "neosolarized"
vim.opt.clipboard:append { 'unnamedplus' }

for k, v in pairs(options) do
	vim.opt[k] = v
end
