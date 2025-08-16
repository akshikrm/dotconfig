return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPre", "BufNewFile" },
	lazy = true,
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "vimdoc", "javascript", "typescript", "c", "go", "html", "css", "gitcommit", "gitignore", "git_config", "json" },
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
