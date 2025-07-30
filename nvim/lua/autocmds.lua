-- Highlight when yanking (copying) text when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_user_command("CopyCurrentPath", function()
	vim.api.nvim_call_function("setreg", { "+", vim.fn.fnamemodify(vim.fn.expand("%"), ":.") })
end, {})

-- Diagnostic messages
vim.diagnostic.config({ virtual_lines = { current_line = true } })
