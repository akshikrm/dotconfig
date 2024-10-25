vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex, { desc = "[F]ile [E]xplorer" })
vim.keymap.set("n", "<C-f>", vim.cmd.GFiles, { desc = "Open files tracked by git" })
vim.keymap.set("n", "<C-p>", vim.cmd.Files({ desc = "Open files in current working directory" }))
vim.keymap.set("n", "<C-x>", vim.cmd.Buffers, { desc = "Show a list of currently open buffers" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Jump half a page and down align the line to middle" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Jump half a page and up align the line to middle" })

vim.keymap.set("n", "n", "nzzzv", { desc = "Just to the next search term and move the line to the middle" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Just to the previous search term and move the line to the middle" })

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
