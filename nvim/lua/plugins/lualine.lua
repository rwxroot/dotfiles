return {
	"nvim-lualine/lualine.nvim",
	opts = function()
		return {
			options = {
				icons_enabled = false,
				component_separators = "|",
				section_separators = "",
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { { "filename", path = 3 } },
				lualine_x = { "filetype" },
				lualine_y = {},
				lualine_z = { "location" },
			},
		}
	end,
}
