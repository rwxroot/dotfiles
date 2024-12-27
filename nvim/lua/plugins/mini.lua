return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.pairs").setup()
		require("mini.comment").setup()
		require("mini.jump").setup()
		require("mini.jump2d").setup()
		require("mini.trailspace").setup()
		require("mini.surround").setup()
		require("mini.cursorword").setup()
		require("mini.bracketed").setup()
		require("mini.starter").setup({
			footer = "",
			silent = true,
		})
	end,
}
