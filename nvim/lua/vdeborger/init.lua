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
		typescript = { { "prettierd", "prettier" } },
		typescriptreact = { { "prettierd", "prettier" } },
		javascript = { { "prettierd", "prettier" } },
		javascriptreact = { { "prettierd", "prettier" } },
		json = { { "prettierd", "prettier" } },
		html = { { "prettierd", "prettier" } },
		css = { { "prettierd", "prettier" } },
		terraform = { { "terraform_fmt" } },
		yaml = { { "yamlfmt" } },
		-- Use the "*" filetype to run formatters on all filetypes.
		["*"] = { "codespell" },
		-- Use the "_" filetype to run formatters on filetypes that don't
		-- have other formatters configured.
		["_"] = { "trim_whitespace" },
	},
})

require("render-markdown").setup({
	preset = "obsidian",
})
