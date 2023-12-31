return {
	{
		"sbdchd/neoformat",
		config = function ()
			vim.keymap.set("n", "<leader>nf", function()
				vim.cmd("Neoformat")
			end)
		end,
	},
}
