-- Set leader key
vim.g.mapleader = " "

-- Disable netrw plugin
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0

-- Set spell language
vim.o.spelllang = "en_gb"
-- Enables spell check
vim.o.spell = true
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
vim.o.tabstop = 4
-- Auto scroll
vim.o.scrolloff = 10
vim.o.sidescrolloff = 8
-- Enables better colours
vim.o.termguicolors = true
-- Enables undo files. Infinite undo!
-- Ends up in ~/.local/state/nvim/undo/
vim.o.undofile = true
-- Enables case insensitive search/replace
vim.o.ignorecase = true
-- Overrides ignorecase if search is in uppercase
vim.o.smartcase = true
-- Incremental search
vim.o.incsearch = true
-- Sync with system clipboard
vim.o.clipboard = "unnamedplus"
-- Disable current mode
vim.o.showmode = false

-- Enable inlay_hint
vim.lsp.inlay_hint.enable(true)
