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

require("lf").setup()

require("Comment").setup()

--require("nvim-tree").setup()
require("nvim-autopairs").setup()

require("toggleterm").setup()
