return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				"c",
				"cpp",
				"css",
				"csv",
				"php",
				"sql",
				"lua",
				"tsx",
				"xml",
				"html",
				"json",
				"nasm",
				"perl",
				"rust",
				"toml",
				"yaml",
				"cmake",
				"python",
				"verilog",
				"markdown",
				"gitcommit",
				"gitignore",
				"typescript",
				"git_rebase",
				"gitattributes"
			},
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
