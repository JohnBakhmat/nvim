return {

	{
		'neovim/nvim-lspconfig',
		dependencies = { 
			'saghen/blink.cmp',

			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
			'WhoIsSethDaniel/mason-tool-installer.nvim',
			{ 'j-hui/fidget.nvim', opts = {} },
			{ 'folke/neodev.nvim', opts = {} },

		},

		config = function()
			local capabilities = require('blink.cmp').get_lsp_capabilities()
			local lspconfig = require('lspconfig')

			lspconfig['lua_ls'].setup({ capabilities = capabilities })

			local servers={
			}

			require('mason').setup()

			local ensure_installed = vim.tbl_keys(servers or {})
			local manually_installed_servers = { 'ocamllsp', 'gleam' }

			ensure_installed = vim.tbl_filter(function(name)
				return not vim.tbl_contains(manually_installed_servers, name)
			end, ensure_installed)

			vim.list_extend(ensure_installed, {
				'stylua', -- Used to format Lua code
			})

			require('mason-tool-installer').setup { ensure_installed = ensure_installed }

			require('mason-lspconfig').setup {
				handlers = {
					function(server_name)
						local server = servers[server_name] or {}
						-- This handles overriding only values explicitly passed
						-- by the server configuration above. Useful when disabling
						-- certain features of an LSP (for example, turning off formatting for tsserver)

						server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
						if server_name == 'tsserver' then
							server.capabilities.documentFormattingProvider = false
						end
						require('lspconfig')[server_name].setup(server)
					end,
				},
			}

		end
	}
}
