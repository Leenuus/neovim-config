local options = {}

options.disable_filetype = { "TelescopePrompt", "spectre_panel" }
options.disable_in_macro = true  -- disable when recording or executing a macro
options.disable_in_visualblock = false -- disable when insert after visual block mode
options.disable_in_replace_mode = true
options.ignored_next_char = [=[[%w%%%'%[%"%.%`%$]]=]
options.enable_moveright = true
options.enable_afterquote = true  -- add bracket pairs after quote
options.enable_check_bracket_line = true  --- check bracket in same line
options.enable_bracket_in_quote = true --
options.enable_abbr = false -- trigger abbreviation
options.break_undo = true -- switch for basic rule break undo sequence
options.check_ts = false
options.map_cr = true
options.map_bs = true  -- map the <BS> key
options.map_c_h = false  -- Map the <C-h> key to delete a pair
options.map_c_w = false -- map <c-w> to delete a pair if possible

return {
	'windwp/nvim-autopairs',
	-- event = "InsertEnter",
	opts = {}
}
