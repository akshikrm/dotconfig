local function progress()
	local cur = vim.fn.line(".")
	local total = vim.fn.line("$")
	if cur == 1 then
		return "Top"
	elseif cur == total then
		return "Bot"
	else
		return string.format("%2d%%", math.floor(cur / total * 100))
	end
end

vim.api.nvim_create_user_command("Prg", function()
	print(progress())
end, {})

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank({ higroup = "Visual", timeout = 100 })
	end,
})
