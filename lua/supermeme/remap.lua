vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
-- vim.keymap.set("n", "<leader>rpy", ":wa<CR>:!python -u %<CR>")
vim.keymap.set("i", "<C-BS>", "<C-w>")
vim.keymap.set({"v", "n"}, "<leader>y", '"+y')
vim.keymap.set({"v", "n"}, "<leader>p", '"+p')
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.opt.clipboard = 'unnamedplus'

vim.keymap.set("n", "<C-p>", function()
  require("fzf-lua").files()
end, { desc = "Find files" })

vim.keymap.set("n", "<C-f>", function()
  require("fzf-lua").live_grep()
end, { desc = "Live grep" })

vim.keymap.set({"v", "n", "i"}, "<C-b>", ":NvimTreeToggle<CR>")

vim.keymap.set("n", "<leader>md", ":MarkdownPreviewToggle<CR>")
vim.keymap.set({"v", "n"}, "<leader>cm", ":CommentToggle<CR>")
