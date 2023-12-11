local keymap = require('which-key')

keymap.register({
	["<leader>"] = {
		name = "basic",
		w = { ":w<cr>", "save" },
		q = { ':x<cr>', 'quit' },
		Q = { ':q!<cr>', 'force quit'},
	}
})

keymap.register({
	["<leader>o"] = {
		name = "open",
		-- s = { ":split /home/leenuus/.config/nvim/init.lua<cr>", "open settings" },
		k = { ':split /home/leenuus/.config/nvim/lua/core/keybindings.lua<cr>', "open keybindings"},
		o = { ':split /home/leenuus/.config/nvim/lua/core/options.lua<cr>', "open options"},
	},
})


keymap.register({
L = { '$', "go to line head"},
	H = { '_', "go to line end"},
	J = { '10jzz', "jump down quick"},
	K = { '10kzz', "jump up quick"},
	j = {  'jzz', "jump down stay middle"},
	k = {  'kzz', "jump up stay middle"},
	U = { ':redo<cr>', "redo"},
	Q = { 'maggvG=`a', "align buffer"},
})

keymap.register({
	-- operator pending mode
L = { '$', "go to line head"},
	H = { '_', "go to line end"},
	p = { 'i(', "in parenthensis"},
	P = { 'a(', "around parenthesis"},
	q = { 'i"', "in double quotes"},
	Q = { 'a"', "around double quotes"},
	x = { 'i\'', "in single quotes"},
	X = { 'a\'', "around single quotes"},
}, { mode = 'o' })


keymap.register({
	H = { '_', "line head"},
	L = { '$', "line end"},
	J = { '10jzz', "quick down"},
	K = { '10kzz', "quick up"},
}, { mode = 'v' })


keymap.register({
	-- insert mode
	['<C-h>'] = { '<C-W>', "backspace kill word"},
	[ '<c-u>' ] = { '<esc>bveUea', "capitalize previous word"},
	[ '<esc>' ] = { '<esc>zz', "center cursor"},
}, { mode = 'i' })

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
