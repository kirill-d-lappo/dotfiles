local cmd = vim.cmd -- execute Vim commands
local g = vim.g -- global variables
local opt = vim.opt -- global/buffer/windows-scoped options

--region Main

opt.textwidth = 120
opt.colorcolumn = "120,140" -- линейка
opt.cursorline = true -- current line
opt.spelllang = { "en_us", "ru" } -- Словари рус eng
opt.number = true -- Включаем нумерацию строк
opt.relativenumber = true -- Вкл. относительную нумерацию строк
opt.scrolloff = 1920 -- Курсор всегда в центре экрана
opt.undofile = true -- Возможность отката назад
opt.splitright = true -- vertical split вправо
opt.splitbelow = true -- horizontal split внизs
opt.termguicolors = true --  24-bit RGB colors
opt.signcolumn = "yes" -- always show sign column to avoid left-right shift
opt.backspace = "indent,eol,start" -- allow backspace
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

g.netrw_liststyle = 3 -- default tree view style

--endregion Main

--region Intendations and Spaces

opt.expandtab = false -- use spaces instead of tabs
opt.shiftwidth = 2 -- shift 4 spaces when tab
opt.tabstop = 2 -- 1 tab == 4 spaces
opt.smartindent = true -- autoindent new lines

--endregion Intendations and Spaces

--region Search

opt.ignorecase = true -- at search ignore case
opt.smartcase = true -- when mixed case in search query, use case-sensetive search

--endregion Search

-- don't auto commenting new lines
cmd([[au BufEnter * set fo-=c fo-=r fo-=o]])

-- Подсвечивает на доли секунды скопированную часть текста
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("YankHighlight", {}),
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 400,
		})
	end,
})
