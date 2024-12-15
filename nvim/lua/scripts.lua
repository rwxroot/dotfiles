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

-- <space>tt spawns a new terminal
local job_id = 0
vim.keymap.set("n", "<leader>tt", function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd("J")
	vim.api.nvim_win_set_height(0, 8)

	job_id = vim.bo.channel
end)

-- <space>cb runs "cargo build" command in the spawned terminal
vim.keymap.set("n", "<leader>cb", function()
	vim.fn.chansend(job_id, { "cargo build\r\n" })
end)

-- <space>cb runs "cargo run" command in the spawned terminal
vim.keymap.set("n", "<leader>cr", function()
	vim.fn.chansend(job_id, { "cargo run\r\n" })
end)

-- <space>cb runs "cargo test" command in the spawned terminal
vim.keymap.set("n", "<leader>ct", function()
	vim.fn.chansend(job_id, { "cargo test\r\n" })
end)
