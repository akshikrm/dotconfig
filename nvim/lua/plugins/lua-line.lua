return {
	"nvim-lualine/lualine.nvim",
	enabled = true,
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "filetype" },
				lualine_c = { "buffers" },
				lualine_x = { "diagnostics" },
				lualine_y = { "diff", "branch" },
				lualine_z = { "location" },
			},
		})
	end,
}
