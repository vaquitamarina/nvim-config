return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			transparent_background = true,
			color_overrides = {
				mocha = {
					base = "#0f111a",
				},
			},
			integrations = {
				cmp = true,
				gitsigns = true,
				harpoon = true,
				illuminate = true,
				indent_blankline = {
					enabled = true,
					scope_color = "overlay2",
					colored_indent_levels = false,
				},
				mason = true,
				native_lsp = { enabled = true },
				notify = true,
				nvimtree = true,
				neotree = true,
				symbols_outline = true,
				telescope = true,
				treesitter = true,
				treesitter_context = true,
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
