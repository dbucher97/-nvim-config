local Rule = require('nvim-autopairs.rule')
local npairs = require('nvim-autopairs')
local cond = require('nvim-autopairs.conds')

npairs.setup{}

npairs.add_rules {
    Rule("$", "$", {"tex", "latex"}):with_pair(cond.not_before_regex("\\"))
}
