vim.cmd("colorscheme sakura")

local group = vim.api.nvim_create_augroup("akshikrm-highlight-yank", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = group,
	callback = function()
		vim.highlight.on_yank({ timeout = 80 })
	end,
})

vim.api.nvim_create_autocmd("VimEnter", {
	desc = "Make vim Background transparent",
	callback = function()
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end,
})
