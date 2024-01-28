local function toggleterm_smart_toggle()
	local terms = require("toggleterm.terminal").get_all()
	if #terms > 0 then
		local term = terms[1]
		local cur_win = vim.api.nvim_get_current_win()
		if term.window == cur_win then
			vim.cmd("wincmd p")
			return
		end
		local cur_tab = vim.api.nvim_get_current_tabpage()
		if vim.api.nvim_win_is_valid(term.window) then
			if vim.api.nvim_win_get_tabpage(term.window) == cur_tab then
				vim.api.nvim_set_current_win(term.window)
				return
			end
			vim.api.nvim_win_close(term.window, true)
		end
		end
	vim.cmd("ToggleTerm")
end

local function focus_on_terminal()
	local terms = require("toggleterm.terminal").get_all()
	if #terms > 0 then
		local term = terms[1]
		local cur_tab = vim.api.nvim_get_current_tabpage()
		if vim.api.nvim_win_is_valid(term.window) and vim.api.nvim_win_get_tabpage(term.window) == cur_tab then
			vim.api.nvim_set_current_win(term.window)
		end
	end
end

return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup()
	end,
	focus_on_terminal = focus_on_terminal,
	toggleterm_smart_toggle = toggleterm_smart_toggle,
	vim.keymap.set("n", [[<A-/>]], [[<Cmd>ToggleTerm<CR>]], { desc = "toggleterm: toggle terminal (n mode)" }),
	vim.keymap.set("t", [[<A-/>]], [[<C-\><C-n>:ToggleTerm<CR>]], { desc = "toggleterm: toggle terminal (t mode)" }),
	vim.keymap.set("n", [[<A-]>]], toggleterm_smart_toggle, { desc = "toggleterm: back to editor (n mode)" }),
	vim.keymap.set("t", [[<A-]>]], toggleterm_smart_toggle, { desc = "toggleterm: back to editor (t mode)" }),
	vim.keymap.set("n", [[<A-w>]], focus_on_terminal, { desc = "focus on terminal" }),
}
