return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.pairs").setup()
		require("mini.comment").setup()
		require("mini.jump").setup()
		require("mini.jump2d").setup()
		require("mini.starter").setup()
		require("mini.indentscope").setup()
		require("mini.trailspace").setup()
	end,
}
