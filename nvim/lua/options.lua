-- Set leader key
vim.g.mapleader = " "

-- Disable netrw plugin
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0

-- Enables mouse
vim.o.mouse = "a"
-- Enables line number
vim.o.number = true
-- Enables relative line number
vim.o.relativenumber = true
-- Enables signcolumn(git changes)
vim.o.signcolumn = "yes"
-- Tab/Shift width
vim.o.tabstop = 4
vim.o.shiftwidth = 4
-- Enables better colors
vim.o.termguicolors = true
-- Enables undo files. Infinite undo!
-- Ends up in ~/.local/state/nvim/undo/
vim.o.undofile = true
-- Enables case insensitive search/replace
vim.o.ignorecase = true
-- Overrides ignorecase if searc is in uppercase
vim.o.smartcase = true
-- Sync with system clipboard
vim.o.clipboard = "unnamedplus"

-- Enable inlay_hint
vim.lsp.inlay_hint.enable(true)

-- <space>sa selects everything
vim.keymap.set("n", "<leader>sa", "ggVG")
vim.keymap.set("n", "//", ":noh<return>")
-- <Esc> exits out of terminal mode
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
-- <jj> exits to insert mode
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("t", "jj", [[<C-\><C-n>]])
-- <2xleader> toggles between buffers
vim.keymap.set("n", "<leader><leader>", "<c-^>")

-- Disable arrow keys
vim.keymap.set({ "n", "v" }, "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set({ "n", "v" }, "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set({ "n", "v" }, "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set({ "n", "v" }, "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- <C-(h,j,k,l)> switces between windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
