return {
	"stevearc/oil.nvim",
	config = function()
		require("oil").setup({
			default_file_explorer = true,
			columns = {
				"icons",
			},
			delete_to_trash = true,
			view_options = {
				show_hidden = true,
			},
		})
	end,
}
