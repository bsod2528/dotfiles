return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim"
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true,
					show_hidden_count = true,
					hide_dotfiles = false,
					hide_gitignored = false
				}
			}
		})
		vim.keymap.set("n", "<A-q>", ":Neotree filesystem reveal left<CR>", {})
		vim.keymap.set("n", "<A-r>", ":Neotree filesystem reveal right<CR>", {})
	end,
}
