return {
	"akinsho/bufferline.nvim",
	enabled = false,
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", {})
		vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>", {})

		vim.keymap.set("n", "<S-b>", ":BufferLinePick<CR>", {})
		vim.keymap.set("n", "<C-c>", ":BufferLineCloseOthers<CR>", {})

		require("bufferline").setup({
			options = {
				diagnostics = "nvim_lsp",
				numbers = "ordinal",
				always_show_bufferline = false,
				indicator = {
					icon = "",
					style = "icon",
				},
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						text_align = "center",
						separator = false,
					},
				},
				custom_filter = function(buf_number, buf_numbers)
					print(vim.fn.bufname(buf_number))
					if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
						return true
					end
				end,
			},
		})
	end,
}
