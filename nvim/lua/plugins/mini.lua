return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.ai").setup()
		require("mini.move").setup()
		require("mini.pairs").setup()
		require("mini.jump2d").setup()
		require("mini.comment").setup()
		require("mini.bracketed").setup()
		require("mini.trailspace").setup()
		require("mini.indentscope").setup()
		require("mini.starter").setup({
			footer = "",
			silent = true,
		})
		require("mini.hipatterns").setup({
			highlighters = {
				fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
				hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
				todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
				note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },
			},
		})
		require("mini.surround").setup({
			custom_surroundings = nil,
			highlight_duration = 500,
			mappings = {
				add = 'Sa', -- Add surrounding in Normal and Visual modes
				delete = 'Sd', -- Delete surrounding
				find = 'Sj', -- Find surrounding (to the right)
				find_left = 'SF', -- Find surrounding (to the left)
				highlight = 'Sh', -- Highlight surrounding
				replace = 'Sr', -- Replace surrounding
				update_n_lines = 'Sn', -- Update `n_lines`
				suffix_last = 'l', -- Suffix to search with "prev" method
				suffix_next = 'n', -- Suffix to search with "next" method
			},
			n_lines = 20,
			respect_selection_type = false,
			search_method = 'cover',
			silent = false,

		})
	end,
}
