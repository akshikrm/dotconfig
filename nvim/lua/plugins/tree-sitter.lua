return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "vimdoc", "javascript", "typescript", "rust" },
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
