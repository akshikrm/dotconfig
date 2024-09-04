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
				ensure_installed = { "lua_ls", "tsserver", "html", "emmet_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

			lspconfig.tsserver.setup({})

			lspconfig.lua_ls.setup({})

			lspconfig.html.setup({})

			lspconfig.emmet_ls.setup({})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show documentation" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "[G]oto [D]efenition" })
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "[G]oto [I]mplementation" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })
			vim.keymap.set("n", "<leader>ed", vim.diagnostic.open_float, { desc = "[Open] [Diagnostics]" })
		end,
	},
}
