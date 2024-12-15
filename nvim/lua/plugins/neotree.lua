return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			vim.keymap.set("n", "<C-e>", ":Neotree toggle<CR>", {})

			require("neo-tree").setup({
				window = {
					width = 40,
				},
				auto_clean_after_session_restore = true,
				close_if_last_window = true,
				filesystem = {
					follow_current_file = {
						enabled = true,
						leave_dirs_open = false,
					},
				},
				default_component_configs = {
					git_status = {
						symbols = {
							unstaged = "",
						},
					},
				},
			})
		end,
	},
	{
		"notjedi/nvim-rooter.lua",
		config = function()
			require("nvim-rooter").setup()
		end,
	},
}
