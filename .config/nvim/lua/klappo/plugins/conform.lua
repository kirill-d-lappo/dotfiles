return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				svelte = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				graphql = { "prettier" },
				liquid = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black", stop_after_first = true },
				bash = { "shfmt", "beautysh", stop_after_first = true },
				sh = { "shfmt", "beautysh", stop_after_first = true },
				shell = { "shfmt", "beautysh", stop_after_first = true },
			},
			formatters = {
				shfmt = {
					prepend_args = function(self, ctx)
						return { "-i", "2", "-ci", "-bn" }
					end,
				},
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			},
		})

		local format_action = function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end

		vim.keymap.set({ "n", "v" }, "<leader>mp", format_action, { desc = "Format file or range (in visual mode)" })
	end,
}
