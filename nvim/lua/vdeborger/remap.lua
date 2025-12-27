vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move selected block down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Move selected block up

vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Scroll down and center cursor
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Scroll up and center cursor

vim.keymap.set("n", "n", "nzzzv") -- Move to next search result and center cursor
vim.keymap.set("n", "N", "Nzzzv") -- Move to previous search result and center cursor

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

vim.keymap.set("x", "<leader>p", [["_dP]]) -- Paste over selected text without overwriting register
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]]) -- Delete selected text without overwriting register

-- Buffers (tabs)
vim.keymap.set("n", "<Tab>", "<Cmd>BufferNext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", "<Cmd>BufferClose<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format) -- Format current buffer using LSP

-- Tmux
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>") -- New session

-- Reload current file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Telescope
vim.keymap.set('n', '<leader>pf', function()
    require('telescope.builtin').find_files()
end, { desc = "Find files" })
vim.keymap.set('n', '<C-p>', function()
    require('telescope.builtin').git_files()
end, { desc = "Git files" })
vim.keymap.set('n', '<leader>pws', function()
    local word = vim.fn.expand("<cword>")
    require('telescope.builtin').grep_string({ search = word })
end, { desc = "Grep current word" })
vim.keymap.set('n', '<leader>pWs', function()
    local word = vim.fn.expand("<cWORD>")
    require('telescope.builtin').grep_string({ search = word })
end, { desc = "Grep current WORD" })
vim.keymap.set('n', '<leader>ps', function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "Grep string" })
vim.keymap.set('n', '<leader>vh', function()
    require('telescope.builtin').help_tags()
end, { desc = "Help tags" })

-- Fugitive (Git)
vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git status" })
vim.keymap.set("n", "<leader>gc", function()
    vim.cmd.Git("commit")
end, { desc = "Git commit" })
vim.keymap.set("n", "<leader>gp", function()
    vim.cmd.Git("push")
end, { desc = "Git push" })
vim.keymap.set("n", "<leader>gl", function()
    vim.cmd.Git("pull")
end, { desc = "Git pull" })
vim.keymap.set("n", "<leader>gd", function()
    vim.cmd.Gdiffsplit()
end, { desc = "Git diff" })
vim.keymap.set("n", "<leader>gb", function()
    vim.cmd.Git("blame")
end, { desc = "Git blame" })

-- Which-key manual trigger
vim.keymap.set("n", "<leader>wk", function()
    require("which-key").show()
end, { desc = "Show which-key" })
