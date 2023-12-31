return {
	"nvim-telescope/telescope-file-browser.nvim",
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function ()
			local builtin = require('telescope.builtin')
			local telescope = require("telescope")

			local function telescope_buffer_dir()
				return vim.fn.expand("%:p:h")
			end

			telescope.setup({
				defaults = {
					file_ignore_patterns = {
						".git/",
						"node_modules/",
						"target/"
					}
				},
				extensions = {
					file_browser = {
						theme = 'dropdown',
						hijack_netrw = true
					}
				}
			})

			telescope.load_extension("file_browser")


			vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
			vim.keymap.set('n', '<C-p>', builtin.git_files, {})
			vim.keymap.set('n', '<leader>ps', function()
				builtin.grep_string({ search = vim.fn.input("Grep > ") })
			end)

			vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})


			vim.keymap.set("n", "<leader>fb", function()
				telescope.extensions.file_browser.file_browser({
					path = "%:p:h",
					cwd = telescope_buffer_dir(),
					respect_gitignore = false,
					hidden = true,
					grouped = true,
					previewer = false,
					initial_mode = "normal",
					layout_config = { height = 40 },
				})
			end)	
		end
	}
}
