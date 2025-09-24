return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"AndreM222/copilot-lualine",
	},
	config = function()
		require("lualine").setup({
			options = {
				globalstatus = true,
				theme = "catppuccin",
			},
			sections = {
				lualine_x = { "copilot", "encoding", "fileformat", "filetype" }, -- I added copilot here
			},
		})
	end,
}
