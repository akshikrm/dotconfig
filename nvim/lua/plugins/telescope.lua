return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "gf", builtin.git_files, { desc = "Find [G]it [F]iles" })
			vim.keymap.set("n", "<leader>df", builtin.find_files, { desc = "Find [D]irectary [F]iles" })
			vim.keymap.set("n", "g/", builtin.grep_string, { desc = "Search current Word" })
			vim.keymap.set("n", "<leader>sw", function()
				builtin.grep_string({ search = vim.fn.input("GREP > ") })
			end, { desc = "[Search] [Word]" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				defaults = {
					layout_strategy = "horizontal",
					sorting_strategy = "ascending",
					layout_config = {
						horizontal = {
							prompt_position = "top",
						},
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
