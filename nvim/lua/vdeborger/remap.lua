vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", "<C-w>", { noremap = true })

-- File explorer
vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })

-- Buffers (tabs)
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true })
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true })
vim.keymap.set("n", "<leader>q", ":bdelete<CR>", { silent = true })
vim.keymap.set("n", "<leader>Q", ":BufferLineCloseLeft<CR>:BufferLineCloseRight<CR>", { silent = true })

-- Conform
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
