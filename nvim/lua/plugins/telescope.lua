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
		vim.keymap.set("n", "<leader>fh", function()
			builtin.find_files({
				cwd = os.getenv("HOME"),
			})
		end, { desc = "Find files in home dir" })
		vim.keymap.set("n", "<leader>fd", function()
			builtin.find_files({
				hidden = true,
				cwd = os.getenv("MY_DOT_FILES"),
			})
		end, { desc = "Find config files" })
		vim.keymap.set("n", "<leader>fn", function()
			builtin.find_files({
				cwd = os.getenv("MY_NOTES"),
			})
		end, { desc = "Find notes" })
	end,
}
