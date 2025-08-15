return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local map = vim.keymap.set
		local nvimtree = require("nvim-tree")

		-- by nvim-tree docs
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		local default_opts = { noremap = true, silent = true }
		map("n", "<F3>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

		nvimtree.setup({
			view = {
				width = 35,
				relativenumber = true,
			},
			renderer = {
				indent_markers = {
					enable = true,
				},
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "+",
							arrow_open = "-",
						},
					},
				},
			},
			update_focused_file = {
				enable = true,
			},
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { "node_modules", "obj", "bin" },
			},
			git = {
				ignore = false,
			},
		})
	end,
}
