require("paq")({
	"savq/paq-nvim",
	"neovim/nvim-lspconfig",
	"nvim-treesitter/nvim-treesitter",
	"numToStr/Comment.nvim",
	"hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
	"nvim-lualine/lualine.nvim",
	'kyazdani42/nvim-tree.lua',
	'kyazdani42/nvim-web-devicons',
	'shaunsingh/nord.nvim',

})

require("plugins-conf")
vim.cmd[[colorscheme nord]]
