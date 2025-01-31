return {
	'ThePrimeagen/harpoon',
	branch = 'harpoon2',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local harpoon = require 'harpoon'
		local keymap = vim.keymap.set
		harpoon:setup()

		keymap('n', '<C-e>', function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)
		keymap('n', '<leader>a', function()
			harpoon:list():add()
		end)
		keymap('n', '<C-j>', function()
			harpoon:list():select(1)
		end)
		keymap('n', '<C-k>', function()
			harpoon:list():select(2)
		end)
		keymap('n', '<C-l>', function()
			harpoon:list():select(3)
		end)
		-- TODO: fix this keybinding does nothing currently
		-- keymap('n', '<C-;>', function()
		-- 	harpoon:list():select(4)
		-- end)
		keymap('n', 'C-f>', function()
			harpoon:list():prev()
		end)
		keymap('n', 'C-h>', function()
			harpoon:list():next()
		end)
	end,
}
