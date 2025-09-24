return {
	{
		"hrsh7th/cmp-nvim-lsp",
		dependencies = {
			"hrsh7th/cmp-path",
		},
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{
		"tronikelis/ts-autotag.nvim",
		opts = {},
		-- ft = {}, optionally you can load it only in jsx/html
		event = "VeryLazy",
		config = function()
			require("ts-autotag").setup({
				aliases = {
					["php"] = "html",
				},
			})
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"onsails/lspkind.nvim",
		},
		config = function()
			local cmp = require("cmp")
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
					["<CR>"] = function(fallback)
						fallback()
					end,
					["<Up>"] = function(fallback)
						fallback()
					end,
					["<Down>"] = function(fallback)
						fallback()
					end,
					["<C-e>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
				}),
				sources = cmp.config.sources({
					{ name = "copilot" },
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "path" }, -- For luasnip users.
				}, {
					{ name = "buffer" },
				}),
				formatting = {
					format = require("lspkind").cmp_format({
						mode = "symbol",
						show_labelDetails = false,
						ellipsis_char = "...",
						maxwidth = 80,
						symbol_map = { Copilot = "" },
					}),
				},
			})
		end,
	},
}
