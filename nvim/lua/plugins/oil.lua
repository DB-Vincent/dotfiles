-- Add plugin
vim.pack.add({
	"https://github.com/stevearc/oil.nvim",
})

-- Setup Oil
require("oil").setup({
	-- Set as default
	default_file_explorer = true,
	-- Keymap configuration
	keymaps = {
		["C-c"] = false,
		["<C-r>"] = "actions.refresh",
		["q"] = "actions.close",
	},
	-- Delete files to trash so they can be retrieved (~/.Trash)
	delete_to_trash = true,
	-- View options
	view_options = {
		-- Show hidden files
		show_hidden = true,
	},
	-- Skip confirmation for simple file adjustments
	skip_confirm_for_simple_edits = true,
})

vim.keymap.set("n", "<leader>e", require("oil").toggle_float)
