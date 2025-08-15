return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			-- linux build only
			build = "make",
			-- windows build only, have to execute manually
			-- build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release ; cmake --build build --config Release ; cp ./build/Release/libfzf.dll ./build/libfzf.dll",
		},
		"folke/todo-comments.nvim",
		"rcarriga/nvim-notify", -- for some reason telescope can't load notify without that dep time to time
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local telescope_previewer = require("telescope.previewers")
		local theme = require("telescope.themes").get_dropdown()

		telescope.setup({
			defaults = vim.tbl_extend("force", theme, {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
				prompt_prefix = "❯ ",
				file_previewer = telescope_previewer.vim_buffer_cat.new,
				file_ignore_patterns = {
					".*/.idea/.*",
					".*/.vs/.*",
					".*/.vscode/.*",
					".*/bin/.*",
					".*/obj/.*",
					"node_modules",
				},
				layout_config = {
					vertical = { width = 0.8 },
				},
			}),
		})

		telescope.load_extension("fzf")

		local ts_builtin = require("telescope.builtin")

		local map = vim.keymap.set
		map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files in cwd" })
		map("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Find recent files" })
		map("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", { desc = "Find string in cwd" })
		map("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", { desc = "Find string under cursor" })
		map("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Find todos" })

		-- map("n", "<leader>fa", ts_builtin.commands, { desc = "Find NVIM action / command" })
		map("n", "<leader>fa", ts_builtin.keymaps, { desc = "Find NVIM action / command" })

		map("n", "<leader>fcl", ts_builtin.colorscheme, { desc = "Change color scheme" })
		map("n", "<leader>fres", ts_builtin.resume, { desc = "Resume last search" })
	end,
}
