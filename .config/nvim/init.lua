require("paq")({
	"savq/paq-nvim",
	"williamboman/nvim-lsp-installer",
	"neovim/nvim-lspconfig",
	"nvim-treesitter/nvim-treesitter",
	"numToStr/Comment.nvim",
	"hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
	"saadparwaiz1/cmp_luasnip",
	"L3MON4D3/LuaSnip",
	"nvim-lualine/lualine.nvim",
	'kyazdani42/nvim-tree.lua',
	'kyazdani42/nvim-web-devicons',
	'shaunsingh/nord.nvim',

})

require("plugins-conf")
require("lsp")
vim.cmd[[colorscheme nord]]
