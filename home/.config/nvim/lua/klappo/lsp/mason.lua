return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local m = require("mason")
		local m_lsp = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		m.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		m_lsp.setup({
			ensure_installed = {
				-- "typescript_es",
				-- "tsserver",
				"eslint",
				"html",
				"graphql",
				"pyright",
				"omnisharp",
				"yamlls",
				"vimls",
				"lua_ls",
				"jsonls",
				"dockerls",
				"powershell_es",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"yamllint",
				-- "prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"pylint", -- python linter
				"eslint_d", -- js linter
			},
		})
	end,
}
