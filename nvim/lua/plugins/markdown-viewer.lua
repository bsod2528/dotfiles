return {
	"toppair/peek.nvim",
	event = { "VeryLazy" },
	build = "deno task --quiet build:fast",
	config = function()
		require("peek").setup()
		vim.api.nvim_create_user_command("Popen", require("peek").open, {})
		vim.api.nvim_create_user_command("Pclose", require("peek").close, {})
	end,
}
