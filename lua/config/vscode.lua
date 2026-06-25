-- ~/.config/nvim/lua/config/vscode.lua

vim.g.mapleader = " "

-- =========================

vim.opt.clipboard = "unnamedplus"

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.scrolloff = 10
vim.opt.updatetime = 50


-- =========================

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

local has_vscode, vscode = pcall(require, "vscode")

local function action(command)
  return function()
    if has_vscode then
      vscode.action(command)
    else
      vim.fn.VSCodeNotify(command)
    end
  end
end


-- =========================

map("n", "<leader>w", action("workbench.action.files.save"), opts)
map("n", "<leader>q", action("workbench.action.closeActiveEditor"), opts)

map("n", "<leader>e", action("workbench.view.explorer"), opts)

map("n", "<leader>ff", action("workbench.action.quickOpen"), opts)

map("n", "<leader>fg", action("workbench.action.findInFiles"), opts)

map("n", "<leader>p", action("workbench.action.showCommands"), opts)

map({ "n", "v", "i" }, "<C-b>", action("workbench.action.toggleSidebarVisibility"), opts)


-- =========================

map("n", "<C-h>", action("workbench.action.focusLeftGroup"), opts)
map("n", "<C-j>", action("workbench.action.focusBelowGroup"), opts)
map("n", "<C-k>", action("workbench.action.focusAboveGroup"), opts)
map("n", "<C-l>", action("workbench.action.focusRightGroup"), opts)

map("n", "<leader>sv", action("workbench.action.splitEditorRight"), opts)
map("n", "<leader>sh", action("workbench.action.splitEditorDown"), opts)

map("n", "<leader>bn", action("workbench.action.nextEditor"), opts)
map("n", "<leader>bp", action("workbench.action.previousEditor"), opts)
map("n", "<leader>bd", action("workbench.action.closeActiveEditor"), opts)


-- =========================
-- Clipboard
-- =========================

map({ "v", "n" }, "<leader>y", '"+y', opts)
map({ "v", "n" }, "<leader>p", '"+p', opts)


-- =========================
-- Search highlight
-- =========================

map("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)


-- =========================
-- Code navigation
-- =========================

map("n", "gd", action("editor.action.revealDefinition"), opts)
map("n", "gD", action("editor.action.goToDeclaration"), opts)
map("n", "gr", action("editor.action.goToReferences"), opts)
map("n", "gi", action("editor.action.goToImplementation"), opts)
map("n", "K", action("editor.action.showHover"), opts)


-- =========================
-- Refactor / code action / format
-- =========================

map("n", "<leader>rn", action("editor.action.rename"), opts)
map({ "n", "v" }, "<leader>ca", action("editor.action.quickFix"), opts)
map("n", "<leader>cf", action("editor.action.formatDocument"), opts)


-- =========================
-- Diagnostics / Problems
-- =========================

map("n", "[d", action("editor.action.marker.prev"), opts)
map("n", "]d", action("editor.action.marker.next"), opts)
map("n", "<leader>xx", action("workbench.actions.view.problems"), opts)


-- =========================
-- Folding
-- =========================

map("n", "zM", action("editor.foldAll"), opts)
map("n", "zR", action("editor.unfoldAll"), opts)
map("n", "zc", action("editor.fold"), opts)
map("n", "zo", action("editor.unfold"), opts)
map("n", "za", action("editor.toggleFold"), opts)


-- =========================
-- Comment
-- =========================

map({ "n", "v" }, "<leader>cm", action("editor.action.commentLine"), opts)

-- =========================
-- Markdown preview
-- =========================

map("n", "<leader>md", action("markdown.showPreviewToSide"), opts)


-- =========================
-- Visual mode indent
-- =========================

map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)
