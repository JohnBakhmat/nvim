return function()
	vim.keymap.set("n", "<leader>nf", function()
		vim.cmd("Neoformat")
	end)
end
