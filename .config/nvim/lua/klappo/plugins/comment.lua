return {
	"numToStr/Comment.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	config = function()
		local c = require("Comment")
		local ts_cs = require("ts_context_commentstring.integrations.comment_nvim")

		c.setup({
			pre_hook = ts_cs.create_pre_hook(),
		})
	end,
}
