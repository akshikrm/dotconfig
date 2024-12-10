return {

	"williamboman/mason.nvim",
	dependencies = {
		lazy = true,
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup()
		local mason_lspconfig = require("mason-lspconfig")
		mason_lspconfig.setup({
			ensure_installed = { "lua_ls", "ts_ls", "html", "emmet_ls", "gopls", "marksman" },
		})
	end,
}
