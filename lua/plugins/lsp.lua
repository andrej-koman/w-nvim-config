local servers = { "lua_ls" }

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()
         require("mason-lspconfig").setup({
				ensure_installed = servers
         })
         require("mason-lspconfig").setup_handlers({

				require("lspconfig").lua_ls.setup {}
         })
      end
	},
	{
		"neovim/nvim-lspconfig"
	}
}
