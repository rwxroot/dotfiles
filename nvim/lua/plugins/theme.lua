return {
	"navarasu/onedark.nvim",
	priority = 1000,
	lazy = false,
	config = function()
		require("onedark").setup({
			style = "warmer",
		})

		require("onedark").load()
	end,
}
