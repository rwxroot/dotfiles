return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		'nvim-lua/plenary.nvim',
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
	},
	config = function()
		require("telescope").setup({
			defaults = {
				file_ignore_patterns = { "node_modules" },
				layout_strategy = "horizontal",
				layout_config = {
					horizontal = {
						width = { padding = 0 },
						height = { padding = 0 },
						preview_width = 0.5,
					},
				},
			},
			pickers = {
				find_files = {
					hidden = false,
				},
			},
			extensions = {
				fzf = {}
			},
		})

		require('telescope').load_extension('fzf')

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
		vim.keymap.set("n", "<leader>fw", builtin.live_grep, { desc = "Find words" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
		vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "Git commits" })
		vim.keymap.set("n", "<leader>gg", builtin.git_status, { desc = "Git status" })
		vim.keymap.set("n", "<leader>fd", function()
			builtin.find_files({
				hidden = false,
				cwd = os.getenv("DOTFILES"),
			})
		end, { desc = "Find config files" })
	end,
}
