require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
	},
	
	indent = {
		enable = true,
	}
})

require('lualine').setup({
	options = {
	theme = 'nord',
    },
})

require("Comment").setup()

require("nvim-tree").setup()
