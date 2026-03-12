return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    preview_config = {
			border = "rounded",
			relative = "cursor",
		},
		current_line_blame_opts = {
			delay = 0,
		},
  }
}
