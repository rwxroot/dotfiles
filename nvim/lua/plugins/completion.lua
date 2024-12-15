return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
	},
	config = function()
		local cmp = require("cmp")
		local cmp_feedkeys = require("cmp.utils.feedkeys")
		local cmp_keymap = require("cmp.utils.keymap")

		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = function(fallback)
					if vim.fn.pumvisible() == 1 then
						if vim.fn.complete_info({ "selected" }).selected == -1 then
							cmp_feedkeys.call(cmp_keymap.t("<CR>"), "in")
						else
							cmp_feedkeys.call(cmp_keymap.t("<C-X><C-Z>"), "in")
						end
					else
						cmp.mapping.confirm({ select = false })(fallback)
					end
				end,
			}),
			sources = cmp.config.sources({
				{ name = "buffer" },
				{ name = "luasnip" },
				{ name = "nvim_lsp" },
			}),
			performance = {
				max_view_entries = 20,
			},
		})
	end,
}
