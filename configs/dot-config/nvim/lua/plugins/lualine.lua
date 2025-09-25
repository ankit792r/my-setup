return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				globalstatus = true,
				section_separators = "",
				component_separators = "",
				disabled_filetypes = {
					"checkhealth",
					"snacks_dashboard",
					"NeogitConsole",
					"NeogitStatus",
					statusline = {},
					winbar = {},
				},
			},
			refresh = {
				refresh_time = 60,
			},
			sections = {
				lualine_x = { "filetype" },
			},
		})
	end,
}
