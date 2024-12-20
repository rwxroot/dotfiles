return {
	"nvim-telescope/telescope.nvim",
	config = function()
		require("telescope").setup({
			pickers = {
				find_files = {
					hidden = false,
				},
			},
		})

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
		vim.keymap.set("n", "<leader>fw", builtin.live_grep, { desc = "Find words" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
	end,
}
