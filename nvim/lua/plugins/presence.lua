return {
	"andweeb/presence.nvim",
	config = function()
		local foo = require("presence").setup({
			auto_update = true,
			main_image = "file",
			enable_line_number = true,
			show_time = true	
		})
	end
}
