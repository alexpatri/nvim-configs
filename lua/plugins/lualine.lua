return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		require("lualine").setup({
			options = {
				theme = "onedark",
				-- section_separators = {},
				sections = {
					lualine_a = {
						{ "mode", separator = {}, right_padding = 2 },
					},
					lualine_b = { "filename", "branch" },
					lualine_c = { "fileformat" },
					lualine_x = {},
					lualine_y = { "filetype", "progress" },
					lualine_z = {
						{ "location", separator = {}, left_padding = 2 },
					},
				},
			},
		})
	end,
}
