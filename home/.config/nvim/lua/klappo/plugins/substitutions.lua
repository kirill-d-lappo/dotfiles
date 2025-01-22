return {
	'gbprod/substitute.nvim',
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local s = require('substitute')

		s.setup()

		local map = vim.keymap.set;

		map("n", "s",  s.operator,   {desc = "Substitute with motion"})
		map("n", "ss", s.line,       {desc = "Substitute line"})
		map("n", "S",  s.eol,        {desc = "Substitute to end of line"})
		map("x", "s",  s.visual,     {desc = "Substitute in VISUAL"})
	end
}
