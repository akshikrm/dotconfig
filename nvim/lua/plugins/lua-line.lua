return {
	"nvim-lualine/lualine.nvim",
	enabled = true,
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				globalstatus = true,
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch" },
				lualine_c = { "buffers" },
				lualine_x = { "diagnostics", "diff" },
				lualine_y = { "filetype" },
				lualine_z = { "location" },
			},
		})
	end,
}
