vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")

vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>", { desc = "Vertical split" })
vim.keymap.set("n", "<leader>sh", "<cmd>split<CR>", { desc = "Horizontal split" })

vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close split" })

vim.keymap.set("n", "<leader>so", "<cmd>only<CR>", { desc = "Only current split" })

vim.keymap.set("n", "<C-Up>", "<cmd>resize +5<CR>", { desc = "Increase height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -5<CR>", { desc = "Decrease height" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +5<CR>", { desc = "Increase width" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -5<CR>", { desc = "Decrease width" })

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

vim.keymap.set("n", "<leader>mde", ":RenderMarkdown enable<CR>")
vim.keymap.set("n", "<leader>mdd", ":RenderMarkdown disable<CR>")
vim.keymap.set({"v", "n"}, "<leader>cm", ":CommentToggle<CR>")
