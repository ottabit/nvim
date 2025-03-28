vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Nerd Fonts
vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.showmode = false
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.inccommand = "split"
vim.opt.scrolloff = 10
vim.opt.confirm = true

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move to right pane" })
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move to left pane" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move to bottom pane" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move to upper pane" })

vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-w>l", {})
vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h", {})
vim.keymap.set("t", "<C-j>", "<C-\\><C-h><C-w>j", {})
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>k", {})
