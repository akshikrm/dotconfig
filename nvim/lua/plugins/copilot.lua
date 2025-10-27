return {
	"github/copilot.vim",
	event = "InsertEnter",
	config = function()
		-- Keybindings
		vim.g.copilot_no_tab_map = true
		vim.keymap.set("i", "<C-J>", 'copilot#Accept("\\<CR>")', {
			expr = true,
			replace_keycodes = false,
		})
		vim.keymap.set("i", "<C-H>", "<Plug>(copilot-dismiss)")
		vim.keymap.set("i", "<C-L>", "<Plug>(copilot-next)")
		vim.keymap.set("i", "<C-K>", "<Plug>(copilot-previous)")


		-- Optional: disable for certain filetypes
		-- vim.g.copilot_filetypes = {
		-- 	["*"] = false,
		-- 	["javascript"] = true,
		-- 	["typescript"] = true,
		-- 	["lua"] = true,
		-- 	["rust"] = true,
		-- 	["c"] = true,
		-- 	["c++"] = true,
		-- 	["go"] = true,
		-- 	["python"] = true,
		-- }
	end,
}
