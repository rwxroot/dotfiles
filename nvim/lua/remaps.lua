-- <space>sa selects everything
vim.keymap.set("n", "<space>sa", "ggVG")
-- <Esc> exits out of terminal mode
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
-- <jj> exits to insert mode
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("t", "jj", [[<C-\><C-n>]])
-- <2xspace> toggles between buffers
vim.keymap.set("n", "<space><space>", "<c-^>")

-- <space>(j,k) to navigate quickfix list
vim.keymap.set("n", "<space>j", "<cmd>cnext<CR>")
vim.keymap.set("n", "<space>k", "<cmd>cprev<CR>")

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

-- <C-s> save in n mode
vim.keymap.set({ "n" }, "<C-s>", "<cmd>:wa<CR>")

-- <space>q delete all term buffers
vim.keymap.set("n", "Q", function()
	-- Close the quickfix list if it's open
	if vim.fn.getqflist() and #vim.fn.getqflist() > 0 then
		vim.cmd("cclose")
	end

	-- Delete all terminal buffers
	for _, buf in ipairs(vim.api.nvim_list_bufs()) do
		if vim.api.nvim_buf_get_option(buf, "buftype") == "terminal" then
			vim.api.nvim_buf_delete(buf, { force = true })
		end
	end
end)

-- <space>q create a quickfix list of diagnostics
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)
