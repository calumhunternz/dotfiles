return { -- Highlight, edit, and navigate code
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	opts = {
		ensure_installed = { 'zig', 'bash', 'c', 'html', 'lua', 'luadoc', 'markdown', 'vim', 'vimdoc', 'rust', 'sql', 'typescript', 'tsx' },
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = { 'ruby' },
		},
		indent = { enable = true, disable = { 'ruby' } },
	},
	config = function(_, opts)
		require('nvim-treesitter.install').prefer_git = true
		require('nvim-treesitter.configs').setup(opts)
	end,
}
