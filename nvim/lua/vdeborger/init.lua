require("vdeborger.remap")
require("vdeborger.lazy_init")
require("vdeborger.set")

require("nvim-tree").setup()
require("bufferline").setup({
	options = {
		numbers = "buffer_id",
		diagnostics = "nvim_lsp",
		offsets = {
			{ filetype = "NvimTree", text = "File Explorer", padding = 1 },
		},
	},
})

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		go = { "gofmt" },
		javascript = { "prettierd", "prettier", stop_after_first = true },
	},
})
