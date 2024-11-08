vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.cmd("highlight Yank guifg=#170f0f guibg=#f2bfc1")
		vim.highlight.on_yank({ higroup = "Yank", timeout = 100 })
	end,
})
