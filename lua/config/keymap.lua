-- Oil
vim.keymap.set('n', '<space>fb', '<CMD>Oil<CR>', { desc = '[F]ile [B]rowser' })

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fs', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
