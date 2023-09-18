return function ()
	require("neo-tree").setup({
		window = {
			position = "left",
			width = 40,
			mappings = {
				["<leader>e"] = "toggle_preview"
			}
		}
	})
end
