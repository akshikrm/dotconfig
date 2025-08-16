vim.opt.scrolloff = 5
vim.opt.mouse = ""
vim.opt.guicursor = ""

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.tabstop = 8
vim.opt.shiftwidth = 8
vim.opt.softtabstop = 8
vim.opt.expandtab = false

vim.opt.wrap = true
vim.opt.textwidth = 80

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME" .. "/.vim/undodir")
vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.spelllang = "en_us"
vim.opt.spell = true

vim.opt.updatetime = 50

vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.smartcase = false
vim.opt.incsearch = true

vim.opt.cursorline = true
vim.opt.splitright = true

vim.opt.statusline = "%f%h%m%r%w  %= %y %l,%c | %P"
