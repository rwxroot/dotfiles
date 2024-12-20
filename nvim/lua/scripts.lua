-- Highlight when yanking (copying) text when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Launch terminal window with no numbers
vim.api.nvim_create_autocmd("TermOpen", {
	desc = "Launch terminal window with no numbers",
	group = vim.api.nvim_create_augroup("custom-term-open", { clear = true }),
	callback = function()
		vim.opt.number = false
		vim.opt.relativenumber = false
	end,
})

-- Local variable for sending commands to a terminal
local job_id = 0

-- <space>tt spawns a new terminal, vertical split(left)
vim.keymap.set("n", "<leader>tt", function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd("L")

	job_id = vim.bo.channel
end)

-- <space>st spawns a new terminal, horizontal split(bottom) with a custom height
vim.keymap.set("n", "<leader>st", function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd("J")
	vim.api.nvim_win_set_height(0, 10)

	job_id = vim.bo.channel
end)

-- <space>rr "cargo run" command in the spawned terminal
vim.keymap.set("n", "<leader>rr", function()
	vim.fn.chansend(job_id, { "cargo run\r\n" })
end)
