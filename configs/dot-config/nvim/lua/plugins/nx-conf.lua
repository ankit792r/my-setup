return {
	"Equilibris/nx.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	keys = {
		{ "<leader>nx", "<cmd>Telescope nx actions<CR>", desc = "nx actions" },
	},
	config = function()
		require("nx.nvim").setup()
	end,
}
