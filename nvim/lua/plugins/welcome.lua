return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			theme = "hyper",
			shortcut_type = "number",
			hide = {
				statusline = true,
			},
			config = {
				week_header = {
					enable = true,
				},
				shortcut = {},
				footer = {},
			},
		})
	end,
}
