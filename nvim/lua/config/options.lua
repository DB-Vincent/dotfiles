local opt = vim.opt

opt.number = true -- Line numbers
opt.relativenumber = true -- Line numbers relative to cursor
opt.cursorline = true -- Highlight current line
opt.wrap = false -- Do not wrap lines
opt.scrolloff = 10 -- Keep 10 lines above/below current line
opt.sidescrolloff = 8 -- Keep 8 columns left/right of cursor

-- Indents
opt.tabstop = 2 -- Tab width
opt.shiftwidth = 2 -- Indent width
opt.shiftround = true -- Round indent
opt.softtabstop = 2 -- Soft tab stop
opt.expandtab = true -- Use spaces instead of tabs
opt.smartindent = true -- Smart auto-indenting
opt.autoindent = true -- Copy indent from current line

-- Search
opt.ignorecase = true -- Case insensitive search
opt.hlsearch = false -- Do not highlight search results
opt.incsearch = true -- Show matches as you type

-- Visual
opt.termguicolors = true -- Enable 24-bit colors
opt.signcolumn = "yes" -- Show sign column
opt.showmatch = true -- Highlight matching brackets
opt.matchtime = 2 -- How long to show matching bracket
opt.showmode = false -- Do not show mod in command line
opt.pumheight = 10 -- Pop Up Menu height
opt.pumblend = 10 -- Pop Up Menu transparency
opt.winblend = 0 -- Floating window transparency
opt.winborder = "single" -- Floating window border
opt.completeopt = "menu,menuone,noselect" -- List of options for inster mode completion
opt.autocomplete = true -- Enable autocomplete
opt.conceallevel = 2 -- Hide * markup for bold and italic, but not markers with substitutions
opt.concealcursor = "" -- Do not hide cursor line markup
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.synmaxcol = 300 -- Max column in which to search for syntax items
opt.ruler = false -- Disable default ruler
opt.virtualedit = "block" -- Allow cursor to move anywhere in visual block mode
opt.winminwidth = 5 -- Min window width
opt.showtabline = 2 -- Always show tabline

-- File handling
opt.backup = false -- Don not create backup files
opt.writebackup = false -- Do not create backup before writing
opt.swapfile = false -- Do not create swap files
opt.undofile = true -- Persistent undo
opt.undolevels = 10000 -- Max amount of changes that can be undone
opt.undodir = vim.fn.expand("~/.vim/undodir") -- Undo directory
opt.updatetime = 300 -- Faster completion
opt.autoread = true -- Auto reload files changed outside nvim
opt.autowrite = true -- Auto save

-- Behavior
opt.hidden = true -- Allow hidden buffers
opt.errorbells = false -- No annoying 'ding' sounds
opt.backspace = "indent,eol,start" -- Better backspace behavior
opt.autochdir = false -- Do not change working dir when opening a file/switching buffers/..
opt.iskeyword:append("-") -- Include dashes as part of words
opt.path:append("**") -- Include subdirs in search
opt.selection = "exclusive" -- Selection behavior
opt.mouse = "a" -- Enable mouse support
opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard
opt.modifiable = true -- Allow buffer modifications
opt.encoding = "UTF-8" -- Set encoding
opt.smoothscroll = true -- Enable smooth scrolling

-- Folding
vim.wo.foldmethod = "expr" -- Sets the fold method
opt.formatoptions = "jcroqlnt" -- Sets how automatic folding is done
opt.grepformat = "%f:%l:%c:%m" -- Format to recognize for grep output
opt.grepprg = "rg --vimgrep" -- Sets the progrem for grep to ripgrep
opt.foldlevel = 99 -- All folds open on open

-- Splitting
opt.splitbelow = true -- Horizontal splits go below
opt.splitright = true -- Vertical splits go right
opt.splitkeep = "screen" -- Keep text on same screen line when splitting

-- Create undodir if it does not exist
local undodir = vim.fn.expand("~/.vim/undodir")
if vim.fn.isdirectory(undodir) == 0 then
	vim.fn.mkdir(undodir, "p")
end

-- Hightlight yanking
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	callback = function()
		vim.hl.on_yank()
	end,
})
