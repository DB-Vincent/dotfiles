vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", "<C-w>", { noremap = true })

-- <C-s> to search/replace the current word object (saves to h register)
vim.keymap.set("n", "<C-s>", '"hyiw:%s/<C-r>h//g<left><left>', { noremap = true })

-- System clipboard copy/pasting
vim.keymap.set("v", "<leader>yy", '"+y')
vim.keymap.set({ "n", "v" }, "<leader>pp", '"+p')
-- Primary selection
vim.keymap.set("v", "<leader>y1", '"*y')
vim.keymap.set({ "n", "v" }, "<leader>p1", '"*p')
-- Whole file
vim.keymap.set("n", "<leader>ya", ":%y+<cr>")
vim.keymap.set("n", "<leader>pa", 'ggVG"+p')

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

-- Fugitive
local bufnr = vim.api.nvim_get_current_buf()
local opts = { buffer = bufnr, remap = false }
vim.keymap.set("n", "<leader>gp", function()
	vim.cmd.Git("push")
end, opts)
vim.keymap.set("n", "<leader>gP", function()
	vim.cmd.Git({ "pull --rebase" })
end, opts)
vim.keymap.set("n", "<leader>gt", ":Git push -u origin ", opts)
vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>")
vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>")
