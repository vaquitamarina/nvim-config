return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			window = {
				width = 25,
				side = "left",
				auto_resize = true,
			},
		})
	end,
	keys = {
		{
			"<leader>e",
			function()
				require("neo-tree.command").execute({ toggle = false })
			end,
			desc = "Explorer NeoTree",
		},
	},
}
