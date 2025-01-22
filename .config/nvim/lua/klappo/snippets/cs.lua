local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.conditions")
local conds_expand = require("luasnip.extras.conditions.expand")

local utils = require("klappo.snippets.utils")

local get_today_date = utils.get_today_date
local get_user_name = utils.get_user_name

ls.add_snippets("cs", {

    s("note", {
        t(string.format("// Note [%s %s] ", get_today_date(), get_user_name())),
        i(0),
    }
    ),

    s("bug", {
        t(string.format("// Bug [%s %s] ", get_today_date(), get_user_name())),
        i(0),
    }
    ),

    s("fixme", {
        t(string.format("// FixMe [%s %s] ", get_today_date(), get_user_name())),
        i(0),
    }
    ),

    s("todo", {
        t(string.format("// Todo [%s %s] ", get_today_date(), get_user_name())),
        i(0),
    }
    ),

})
