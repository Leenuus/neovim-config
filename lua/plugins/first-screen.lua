return {
	'goolord/alpha-nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function ()
		require'alpha.themes.dashboard'.section.footer.val = require'alpha.fortune'()
		require'alpha'.setup(require'alpha.themes.dashboard'.config)
		-- require'alpha'.setup(require'alpha.themes.dashboard'.config)
	end
};
