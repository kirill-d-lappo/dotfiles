-- Bootstrap lazy.nvim
local utils = require("klappo.utils")
local lazypath = utils.get_lazy_package_folder_path("lazy.nvim")

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end

vim.opt.rtp:prepend(lazypath)

local lazy = require("lazy")
lazy.setup({
	spec = {
		{ import = "klappo.themes" },
		{ import = "klappo.plugins" },
		{ import = "klappo.plugins.klappo" },
		{ import = "klappo.plugins.git" },
		{ import = "klappo.plugins.folke" },
		{ import = "klappo.lsp" },
		{ import = "klappo.lsp.dotnet" },
	},
	install = {
		colorscheme = { "rose-pine" },
	},
	-- automatically check for plugin updates
	checker = { enabled = false, notify = false },

	-- do not notify about changes in settings
	change_detection = { notify = true },
})

vim.cmd("colorscheme kanagawa-wave")

require("nvim-keymaps").setup()

-- some notes
-- some notes
