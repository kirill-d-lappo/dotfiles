return {
	"rcarriga/nvim-notify",
	config = function()
		local notify = require("notify")
		notify.setup({
			render = "wrapped-compact",
			stages = "fade",
			max_height = 5,
			timeout = 1500,
		})
	end,
}
