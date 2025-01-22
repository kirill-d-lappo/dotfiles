return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"onsails/lspkind.nvim",
		"hrsh7th/cmp-nvim-lsp",
		{
			"antosha417/nvim-lsp-file-operations",
			config = true,
		},
		{
			"folke/neodev.nvim",
			opts = {},
		},
	},
	config = function()
		local utils = require("klappo.utils")
		local lspconfig = require("lspconfig")
		local mason_lspconfig = require("mason-lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		local map = vim.keymap.set

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				local opts = {
					buffer = ev.buf,
					silent = true,
					desc = "Default LSP Command",
				}

				opts.desc = "Show LSP references"
				map("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)

				opts.desc = "Search LSP everywhere"
				map("n", "gE", "<cmd>Telescope lsp_dynamic_workspace_symbols<CR>", opts)

				opts.desc = "Go to declaration"
				map("n", "gD", vim.lsp.buf.declaration, opts)

				opts.desc = "Show LSP definitions"
				map("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

				opts.desc = "Show LSP implementation"
				map("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

				opts.desc = "Show LSP Type Definitions"
				map("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

				opts.desc = "See available code actions"
				map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

				opts.desc = "Smart rename"
				map("n", "<leader>rn", vim.lsp.buf.rename, opts)

				opts.desc = "Show buffer diagnostics"
				map("n", "<leader>D", "<CMD>Telescope diagnostics bufnr=0<CR>", opts)

				opts.desc = "Show line diagnostics"
				map("n", "<leader>d", vim.diagnostic.open_float, opts)

				opts.desc = "Go to prev diagnostics"
				map("n", "[d", vim.diagnostic.get_prev, opts)

				opts.desc = "Go to next diagnostics"
				map("n", "]d", vim.diagnostic.get_next, opts)

				opts.desc = "Show docs for element under cursor"
				map("n", "K", vim.lsp.buf.hover, opts)

				opts.desc = "LSP Restart"
				map("n", "<leader>rs", ":LspRestart<CR>", opts)

				opts.desc = "Rename symbol"
				map("n", "<leader>r", vim.lsp.buf.rename, opts)

				opts.desc = "Quick fix..."
				local function quickfix()
					vim.lsp.buf.code_action({
						filter = function(a)
							return a.isPreferred
						end,
						apply = true,
					})
				end

				vim.keymap.set("n", "<leader>qf", quickfix, opts)
			end,
		})

		local signs = {
			Error = " ",
			Warn = " ",
			Hint = "󰠠 ",
			Info = " ",
		}

		for type, icon in pairs(signs) do
			local hc = "DiagnosticSign" .. type
			vim.fn.sign_define(hc, {
				text = icon,
				texthl = hc,
				numhl = "",
			})
		end

		local caps = cmp_nvim_lsp.default_capabilities()
		local pwsh_edit_svc_path = utils.get_mason_package_folder_path("powershell-editor-services")

		mason_lspconfig.setup_handlers({
			function(server_name)
				lspconfig[server_name].setup({
					capabilities = caps,
				})
			end,
			["powershell_es"] = function()
				lspconfig["powershell_es"].setup({
					capabilities = caps,
					bundle_path = pwsh_edit_svc_path,
				})
			end,
			["omnisharp"] = function()
				lspconfig["omnisharp"].setup({
					capabilities = caps,
					cmd = { "dotnet", utils.get_mason_package_folder_path("omnisharp") .. "/libexec/OmniSharp.dll" },
					enable_roslyn_analysers = true,
					enable_import_completion = true,
					organize_imports_on_format = true,
					enable_decompilation_support = true,
					filetypes = { "cs", "vb", "csproj", "sln", "slnx", "props", "csx", "targets" },
				})
			end,
			["lua_ls"] = function()
				lspconfig["lua_ls"].setup({
					capabilities = caps,
					settings = {
						Lua = {
							diagnostics = {
								globals = { "vim" },
							},
							completion = {
								callSnippet = "Replace",
							},
						},
					},
				})
			end,
		})
	end,
}
