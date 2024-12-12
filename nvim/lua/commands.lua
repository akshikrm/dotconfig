local group = vim.api.nvim_create_augroup("akshikrm-highlight-yank", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = group,
	callback = function()
		vim.cmd("highlight Yank guifg=#170f0f guibg=#f2bfc1")
		vim.highlight.on_yank({ higroup = "Yank", timeout = 100 })
	end,
})

-- vim.cmd("colorscheme onedark")
