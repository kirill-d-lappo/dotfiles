return {
	"goolord/alpha-nvim",
	dependencies = {
		"ajatkj/vim-qotd",
		"kirill-d-lappo/nvim-daily-quotes",
	},
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		local logos = require("nvim-logos")

		-- Set header with logo
		local get_logo = logos.get_random_logo_func()
		dashboard.section.header.val = get_logo()

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
			dashboard.button("F3", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("SPC ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("SPC fs", "  > Find String", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("SPC wr", "󰁯  > Work Restore", "<cmd>SessionRestore<CR>"),
			dashboard.button("q", "  > Quit", "<cmd>qa<CR>"),
		}

		local dq = require("nvim-daily-quotes")
		local quote = dq.get_qod()

		local padding_length = 3
		local border_length = #quote + padding_length * 2
		local border = string.rep("=", border_length)
		local padding = string.rep(" ", padding_length)
		local text = padding .. quote .. padding

		dashboard.section.footer.val = {
			border,
			text,
			border,
		}

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
