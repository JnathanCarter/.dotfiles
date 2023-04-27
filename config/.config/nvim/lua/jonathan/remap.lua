vim.g.mapleader = " "
--
--Netrw 
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--Slice Navigation 
vim.keymap.set("n","<C-k>"," <C-w><up>")
vim.keymap.set("n","<C-j>"," <C-w><down>")
vim.keymap.set("n","<C-h>"," <C-w><left>")
vim.keymap.set("n","<C-l>"," <C-w><right>")

--Write and Quit 
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", vim.cmd.q)
 
--PackerSync and :so
vim.keymap.set("n", "<leader>ps", vim.cmd.PackerSync)
vim.keymap.set("n", "<leader>s", vim.cmd.PackerSync)
vim.keymap.set("n", "<leader>wv", "<C-w>v")
vim.keymap.set("n", "<leader>wh", "<C-w>s")
