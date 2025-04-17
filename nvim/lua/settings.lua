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
-- Enables better colours
vim.o.termguicolors = true
-- Enables undo files. Infinite undo!
-- Ends up in ~/.local/state/nvim/undo/
vim.o.undofile = true
-- Enables case insensitive search/replace
vim.o.ignorecase = true
-- Overrides ignorecase if search is in uppercase
vim.o.smartcase = true
-- Sync with system clipboard
vim.o.clipboard = "unnamedplus"

-- show a column at 80 characters as a guide for long lines
vim.opt.colorcolumn = "80"
--- except in Rust where the rule is 100 characters
vim.api.nvim_create_autocmd("Filetype", { pattern = "rust", command = "set colorcolumn=100" })

-- Enable inlay_hint
vim.lsp.inlay_hint.enable(true)
