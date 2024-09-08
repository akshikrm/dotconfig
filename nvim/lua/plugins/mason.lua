return {

	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local mason = require("mason").setup()
		local mason_lspconfig = require("mason-lspconfig")
		mason_lspconfig.setup({
			ensure_installed = { "lua_ls", "tsserver", "html", "emmet_ls" },
		})
	end,
}
