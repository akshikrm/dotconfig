local function lualineTime()
	return os.date("%d %b %a %H:%M", os.time())
end

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
				lualine_b = { "branch" },
				lualine_c = { "filename" },
				lualine_x = { "diagnostics" },
				lualine_y = { lualineTime },
				lualine_z = { "location" },
			},
		})
	end,
}
