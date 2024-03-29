return {
	{
	"williamboman/mason.nvim",
	config = function()
		require("mason").setup()
	end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"sqls",
					"html",
					"astro",
					"cmake",
					"cssls",
					"taplo",
					"yamlls",
					"lua_ls",
					"clangd",
					"jsonls",
					"pyright",
					"lemminx",
					"tsserver",
					"marksman",
					"hdl_checker",
					"intelephense",
					"perlnavigator"
				}
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.tsserver.setup({})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	}
}
