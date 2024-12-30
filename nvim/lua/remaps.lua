-- <space>sa selects everything
vim.keymap.set("n", "<space>sa", "ggVG")
vim.keymap.set("n", "//", ":noh<return>")
-- <Esc> exits out of terminal mode
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
-- <jj> exits to insert mode
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("t", "jj", [[<C-\><C-n>]])
-- <2xspace> toggles between buffers
vim.keymap.set("n", "<space><space>", "<c-^>")

-- Disable arrow keys
vim.keymap.set({ "n", "v" }, "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set({ "n", "v" }, "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set({ "n", "v" }, "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set({ "n", "v" }, "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- <C-(h,j,k,l)> switches between windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- <C-s> save in n and i mode
vim.keymap.set({ "n", "i" }, "<C-s>", '<cmd>:wa<CR>')

-- <space>q delete all term buffers
vim.keymap.set("n", "Q", function()
	for _, buf in ipairs(vim.api.nvim_list_bufs()) do
		if vim.api.nvim_buf_get_option(buf, "buftype") == "terminal" then
			vim.api.nvim_buf_delete(buf, { force = true })
		end
	end
end)

-- <space>tt spawns a new terminal, vertical split(left)
vim.keymap.set("n", "<space>tt", function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd("L")
end)
