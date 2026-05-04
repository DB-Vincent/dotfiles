local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-------
-- Buffer navigation
-------

-- Tab/Shift+Tab: switch between tabs
map("n", "<Tab>", "<cmd>bnext<CR>", { desc = "Next buffer" })
map("n", "<S-Tab>", "<cmd>bprevious<CR>", { desc = "Previous buffer" })

-- Space+bb: Switch to last edited file
map("n", "<leader>bb", "<cmd>e #<CR>", { desc = "Switch to other buffer" })

-- Space+bq: Close tab
map("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Close current buffer" })

-------
-- Window management
-------

-- Ctrl+hjkl: moving between windows
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to bottom window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to top window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- Ctrl+Shift+arrow: resize windows
map("n", "<C-S-Up>", "<cmd>resize +5<CR>", opts)
map("n", "<C-S-Down>", "<cmd>resize -5<CR>", opts)
map("n", "<C-S-Left>", "<cmd>vertical resize -5<CR>", opts)
map("n", "<C-S-Right>", "<cmd>vertical resize +5<CR>", opts)

-- Window splitting
map("n", "<leader>ww", "<C-W>p", { desc = "Other window", remap = true })
map("n", "<leader>wd", "<C-W>c", { desc = "Close window", remap = true })
map("n", "<leader>sh", "<C-W>s", { desc = "Split window below", remap = true })
map("n", "<leader>sv", "<C-W>v", { desc = "Split window right", remap = true })

-------
-- Code editor
-------

-- Alt+jk: move lines
map("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })
map("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })

-- Shift+jk: move blocks
map("v", "J", ":move '>+1<CR>gv=gv", { desc = "Move Block Down" })
map("v", "K", ":move '<-2<CR>gv=gv", { desc = "Move Block Up" })

-- g+hl: Go to end/start of line
map("n", "gl", "$", { desc = "Go to end of line" })
map("n", "gh", "^", { desc = "Go to start of line" })
