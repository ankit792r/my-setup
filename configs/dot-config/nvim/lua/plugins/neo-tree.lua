return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle left reveal<CR>", {})
		vim.keymap.set("n", "<leader>s", ":Neotree git_status toggle float<CR>", {})
		vim.keymap.set("n", "<leader>bl", ":Neotree buffers reveal float<CR>", {})
	end,
}
