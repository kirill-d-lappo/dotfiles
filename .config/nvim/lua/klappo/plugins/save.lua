return {
	'boorboor/save.nvim',
	config = function()
		local save = require("save")
		save.setup({
			change_mode_mapping = '<F4>'
		})
	end
}
