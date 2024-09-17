return {
	{
		"rebelot/kanagawa.nvim",
		enabled = false,
		priority = 1000,
		--
		-- config = function()
		-- 	vim.cmd.colorscheme("kanagawa")
		-- end,
	},

	{
		"metalelf0/base16-black-metal-scheme",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("base16-black-metal-bathory")
		end,
	},
}
