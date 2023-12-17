-- Ensure Installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugs = {
 
	-- Colorizer
	{ 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

	-- Color Scheme
	{
		'svrana/neosolarized.nvim',
		dependencies = { 'tjdevries/colorbuddy.nvim' }
	},

	-- File Browser
	{
		'nvim-telescope/telescope.nvim',
		dependencies = {'nvim-lua/plenary.nvim'},
		config = function() require("telescope").setup {} end
	},

	-- Status Bar
	'nvim-lualine/lualine.nvim',

	-- More Cursors
	'terryma/vim-multiple-cursors',

	-- Rust
	'rust-lang/rust.vim',

	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {}
	},
	-- Surround
	'tpope/vim-surround',

	-- Completion, Intelisense
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		dependencies = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}
	},

	'simrat39/rust-tools.nvim',

	-- Debug
	{ 'mfussenegger/nvim-dap', dependencies = 'rcarriga/nvim-dap-ui' },
}

local opts = {}

require("lazy").setup(plugs, opts)

