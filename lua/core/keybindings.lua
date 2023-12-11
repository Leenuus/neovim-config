-- {
--   mode = "n", -- NORMAL mode
--   -- prefix: use "<leader>f" for example for mapping everything related to finding files
--   -- the prefix is prepended to every mapping part of `mappings`
--   prefix = "",
--   buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
--   silent = true, -- use `silent` when creating keymaps
--   noremap = true, -- use `noremap` when creating keymaps
--   nowait = false, -- use `nowait` when creating keymaps
--   expr = false, -- use `expr` when creating keymaps
-- }

local keymap = require('which-key')
local n = { mode = "n" }
local v = { mode = "v" }
local o = { mode = "o" }
local i = { mode = "i" }

keymap.register({
	["<leader>"] = {
		name = "basic",
		w = { ":w<cr>", "save" },
		q = { ':x<cr>', 'quit' },
		Q = { ':q!<cr>', 'force quit'},
	}
}, n)

keymap.register({
	["<leader>o"] = {
		name = "open",
		-- s = { ":split /home/leenuus/.config/nvim/init.lua<cr>", "open settings" },
		k = { ':vsplit /home/leenuus/.config/nvim/lua/core/keybindings.lua<cr>', "keybindings"},
		o = { ':vsplit /home/leenuus/.config/nvim/lua/core/options.lua<cr>', "options"},
	},
}, n)


keymap.register({
	L = { '$', "go to line head"},
	H = { '_', "go to line end"},
	J = { '10jzz', "jump down quick"},
	K = { '10kzz', "jump up quick"},
	j = {  'jzz', "jump down stay middle"},
	k = {  'kzz', "jump up stay middle"},
	U = { ':redo<cr>', "redo"},
	Q = { 'maggvG=`a', "align buffer"},
}, n)

keymap.register({
	-- operator pending mode
	L = { '$', "go to line head"},
	H = { '_', "go to line end"},
	p = { 'i(', "in ()"},
	P = { 'a(', "around ()"},
	q = { 'i"', "in \"\""},
	Q = { 'a"', "around \"\""},
	o = { 'i\'', "in ''"},
	O = { 'a\'', "around ''"},
}, o)


keymap.register({
	H = { '_', "line head"},
	L = { '$', "line end"},
	J = { '10jzz', "quick down"},
	K = { '10kzz', "quick up"},
}, v)


keymap.register({
	-- insert mode
	['<C-h>'] = { '<C-W>', "backspace kill word"},
	[ '<c-u>' ] = { '<esc>bveUea', "capitalize previous word"},
	[ '<esc>' ] = { '<esc>zz', "center cursor"},
}, i)

-- hop
-- place this in one of your configuration file(s)
local hop = require('hop')
local directions = require('hop.hint').HintDirection

keymap.register({
	name = "hop quick jump",
	f = { function() hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true }) end, "better f"},
	F = { function() hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true }) end, "better F" },
	t = { function() hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 }) end, 'better t' },
	T = { function() hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 }) end, 'better T' },
	['gj'] = { ":HopLineStart<cr>", "go to line"}

}, n)  

  
