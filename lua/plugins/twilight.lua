-- Lua
return {
	"folke/twilight.nvim",
	opts = {
		expand = { -- for treesitter, we we always try to expand to the top-most ancestor with these types
			"function",
			"method",
		},
	},
	config = function()
		vim.keymap.set("n", "<leader>tt", ":Twilight<CR>", { noremap = true, silent = true })
	end,
}
