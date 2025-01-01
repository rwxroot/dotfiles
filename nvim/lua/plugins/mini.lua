return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.move").setup()
		require("mini.jump").setup()
		require("mini.pairs").setup()
		require("mini.jump2d").setup()
		require("mini.comment").setup()
		require("mini.surround").setup()
		require("mini.bracketed").setup()
		require("mini.trailspace").setup()
		require("mini.starter").setup({
			footer = "",
			silent = true,
		})
		require("mini.hipatterns").setup(
			{
				highlighters = {
					fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
					hack  = { pattern = '%f[%w]()HACK()%f[%W]', group = 'MiniHipatternsHack' },
					todo  = { pattern = '%f[%w]()TODO()%f[%W]', group = 'MiniHipatternsTodo' },
					note  = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'MiniHipatternsNote' },
				},
			}
		)
	end,
}
