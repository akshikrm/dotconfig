return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "vimdoc", "javascript", "typescript", "solidity", "go", "html" },
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
