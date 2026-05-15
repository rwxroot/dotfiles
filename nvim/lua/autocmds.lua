-- Highlight when yanking (copying) text when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Copy current path
vim.api.nvim_create_user_command("CopyCurrentPath", function()
	vim.api.nvim_call_function("setreg", { "+", vim.fn.fnamemodify(vim.fn.expand("%"), ":.") })
end, {})

-- Copy current path with line
vim.api.nvim_create_user_command("CopyCurrentPathWithLine", function()
	local path = vim.fn.fnamemodify(vim.fn.expand("%"), ":.")
	local line = vim.fn.line(".")

	vim.fn.setreg("+", string.format("%s:%d", path, line))
end, {})

-- Diagnostic messages
vim.diagnostic.config({ virtual_lines = { current_line = true } })

-- -- Temp hack for weird md file treesitter bug
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = { "markdown", "markdown_inline" },
--   callback = function()
--     pcall(vim.treesitter.stop)
--   end,
-- })
