return {
	"navarasu/onedark.nvim",
	priority = 1000,
	lazy = false,
	config = function()
		require("onedark").setup({
			-- dark, darker, cool, deep, warm, warmer, light
			style = "warmer",
		})

		require("onedark").load()
	end,
}
