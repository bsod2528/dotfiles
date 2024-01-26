return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim"
	},
	config = function()
		vim.keymap.set("n", "<A-q>", ":Neotree filesystem reveal left<CR>", {})
		vim.keymap.set("n", "<A-r>", ":Neotree filesystem reveal right<CR>", {})
	end
}
