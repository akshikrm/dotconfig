local group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = group,
	callback = function()
		vim.cmd("highlight Yank guifg=#170f0f guibg=#f2bfc1")
		vim.highlight.on_yank({ higroup = "Yank", timeout = 100 })
	end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
	desc = "Format File on saving",
	group = group,

	callback = function()
		vim.lsp.buf.format()
	end,
})

-- vim.api.nvim_create_autocmd("FileType", {
-- 	pattern = "markdown",
-- 	callback = function()
-- 		print("opened markdown file")
-- 		vim.lsp.start({
-- 			name = "my-markdown-server",
-- 			cmd = { "/Users/raven/golang-lsp/dist" }
-- 		})
-- 	end
-- })
