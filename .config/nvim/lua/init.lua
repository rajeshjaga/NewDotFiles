vim.opt.relativenumber = true 
vim.opt.number = true 
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.mouse = "a"
vim.opt.expandtab = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.clipboard = "unnamedplus"
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>vs", ":vsp <CR>", {})
vim.keymap.set("n", "<leader>v", ":sp <CR>", {})
vim.keymap.set("n", "Q", ":qa <CR>", {})
vim.keymap.set("n", "gV", ":vertical all <CR>", {})
