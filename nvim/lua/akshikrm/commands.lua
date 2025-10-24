vim.cmd("colorscheme sakura")

local group = vim.api.nvim_create_augroup("akshikrm-highlight-yank", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = group,
	callback = function()
		vim.highlight.on_yank({ timeout = 80 })
	end,
})

local augroup = vim.api.nvim_create_augroup("akshikrm-toggle-line", { clear = true })

vim.api.nvim_create_autocmd("InsertEnter", {
	desc = "disable line number in insert mode",
	group = augroup,
	callback = function()
		vim.opt.relativenumber = false
		vim.opt.number = false
	end
})


vim.api.nvim_create_autocmd("InsertLeave", {
	desc = "toggle line number in insert mode",
	group = augroup,
	callback = function()
		vim.opt.relativenumber = true
		vim.opt.number = true
	end
})



vim.api.nvim_create_user_command("Its", function()
	local timestamp = os.date("%Y%m%d%H%M")
	vim.api.nvim_put({ timestamp }, "c", true, true)
end, {})

vim.api.nvim_create_user_command("GCC", function()
	local fname   = vim.fn.input("Enter the commit message: ", "", "file")
	local command = "git commit -m " .. fname
	os.execute(command)
end, {})



vim.api.nvim_create_user_command("Zettle", function(opts)
	local input = opts.args

	if input == "" then
		print("Usage: :Zettle <Note Title>")
		return
	end


	local timestamp = os.date("%Y%m%d%H%M")
	local file_name = timestamp .. "-" .. input:gsub("%s+", ""):gsub("[^%w%-]", ""):lower() .. ".md"
	local entry = string.format("* [%s](%s)", input, file_name)

	local row = vim.api.nvim_win_get_cursor(0)[1]
	vim.api.nvim_buf_set_lines(0, row - 1, row - 1, false, { entry })
	vim.api.nvim_win_set_cursor(0, { row, 0 })



	print("Added entry: " .. entry)

	local notes_dir = vim.fn.expand("%:p:h")
	local path = notes_dir .. "/" .. file_name

	local title = string.format("# %s: %s", timestamp, input)
	if vim.fn.filereadable(path) == 0 then
		local default_content = {
			title
		}
		vim.fn.writefile(default_content, path)
	end
end, { nargs = 1 })
