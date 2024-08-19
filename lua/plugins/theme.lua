return
{
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,

    config = function()
		require("catppuccin").setup({
			flavour = "macchiato",
			-- color_overrides = {},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
