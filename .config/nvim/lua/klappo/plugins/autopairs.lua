return {
	'windwp/nvim-autopairs',
	event = {"InsertEnter"},
	dependencies = {
		"hrsh7th/nvim-cmp",
	},
	config = function()
		local ap = require("nvim-autopairs")

		ap.setup({
			check_ts = true,
			ts_config = {
				lua = {"string"},
				javascript = {"template_string"},
				java = false,
			},
		})

		local cmp_ap = require('nvim-autopairs.completion.cmp')
		local cmp = require('cmp')

		cmp.event:on("confirm_don", cmp_ap.on_confirm_done())
	end
}
