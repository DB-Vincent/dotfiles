vim.g.mapleader = " "

vim.keymap.set("n", "n", "nzzzv") -- Move to next search result and center cursor
vim.keymap.set("n", "N", "Nzzzv") -- Move to previous search result and center cursor

vim.keymap.set("n", "<C-/>", function()
  vim.cmd("belowright split | terminal")
end, { desc = "Open terminal" })

-- <C-s> to search/replace the current word object (saves to h register)
vim.keymap.set("n", "<C-s>", '"hyiw:%s/<C-r>h//g<left><left>', { noremap = true })

-- oil
vim.keymap.set("n", "<leader>oo", "<cmd>Oil --float<cr>", { desc = "Open oil in floating window" })
