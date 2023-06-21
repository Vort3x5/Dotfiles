return require('packer').startup(function(use)

	-- Plug Manager
	use 'wbthomason/packer.nvim'

	-- Colorizer
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	-- Color Scheme
	use {
		'svrana/neosolarized.nvim',
		requires = { 'tjdevries/colorbuddy.nvim' }
	}

	-- File Browser
	use {
		'nvim-telescope/telescope.nvim',
		requires = {'nvim-lua/plenary.nvim'},
		config = function() require("telescope").setup {} end
	}

	-- Status Bar
	use 'nvim-lualine/lualine.nvim'

	-- More Cursors
	use 'terryma/vim-multiple-cursors'

	-- Rust
	-- use 'rust-lang/rust.vim'

	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end,
		require('nvim-autopairs').enable()
	}
	-- Surround
	use 'tpope/vim-surround'

	-- Completion, Intelisense
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
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
	}

end)
