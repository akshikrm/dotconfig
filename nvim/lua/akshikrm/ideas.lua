local base_notes_dir = vim.fn.expand('~/scribbles')

local function ensure_directory_exists(path)
	local dir = vim.fn.fnamemodify(path, ':h')
	if vim.fn.isdirectory(dir) == 0 then
		vim.fn.mkdir(dir, 'p')
		vim.notify("Created directory: " .. dir, vim.log.levels.INFO)
	end
end

local function open_ideas_file()
	local daily_timestamp = os.date("%Y%m%d")
	local filename = daily_timestamp .. ".md"
	local full_file_path = base_notes_dir .. "/" .. filename

	ensure_directory_exists(full_file_path)

	local file_exists = vim.fn.filereadable(full_file_path) == 1

	if not file_exists then
		local file = io.open(full_file_path, "w")
		if file then
			file:write("# Scribble " .. daily_timestamp .. "\n\n")
			file:close()
			vim.notify("Created new daily ideas file: " .. full_file_path, vim.log.levels.INFO)
		else
			vim.notify("Error: Could not create file at " .. full_file_path, vim.log.levels.ERROR)
			return
		end
	else
		vim.notify("Opening existing daily ideas file: " .. full_file_path, vim.log.levels.INFO)
	end

	vim.cmd("vs " .. full_file_path)
	vim.notify("Opened ideas file: " .. full_file_path, vim.log.levels.INFO)
end

vim.api.nvim_create_user_command(
	'OpenIdeasFile',
	open_ideas_file,
	{
		nargs = 0,
		desc = 'Create and open a new timestamped ideas Markdown file'
	}
)
