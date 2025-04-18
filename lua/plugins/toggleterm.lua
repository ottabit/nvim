return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				size = 20,
				direction = "horizontal",
			})

			vim.keymap.set("n", "<leader>t", "<CMD>ToggleTerm<CR>", { desc = "Toggle Terminal" })
			vim.keymap.set("t", "<Esc><Esc>", "<CMD>ToggleTerm<CR>", {})
		end,
	},
}
