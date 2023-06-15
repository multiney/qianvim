-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true-- enabl 24-bit RGB color in the TUI

-- Hint: use `:h <option>` to figure out the meaning if needed
vim.opt.clipboard = 'unnamedplus'   -- use system clipboard 
vim.opt.mouse = 'a'                 -- allow the mouse to be used in Nvim
vim.opt.encoding = "UTF-8"

-- Tab
vim.opt.tabstop = 4                 -- number of visual spaces per TAB
vim.opt.softtabstop = 4             -- number of spacesin tab when editing
vim.opt.shiftwidth = 4              -- insert 4 spaces on a tab
vim.opt.expandtab = true            -- tabs are spaces, mainly because of python

-- UI config
vim.opt.number = true               -- show absolute number
vim.opt.relativenumber = true       -- add numbers to each line on the left side
vim.opt.cursorline = true           -- highlight cursor line underneath the cursor horizontally
vim.opt.splitbelow = true           -- open new vertical split bottom
vim.opt.splitright = true           -- open new horizontal splits right
vim.opt.showmode = false            -- we are experienced, wo don't need the "-- INSERT --" mode hint

-- Searching
vim.opt.incsearch = true            -- search as characters are entered
vim.opt.hlsearch = false            -- do not highlight matches
vim.opt.ignorecase = true           -- ignore case in searches by default
vim.opt.smartcase = true            -- but make it case sensitive if an uppercase is entered
vim.opt.infercase = true -- Infer cases in keyword completion

vim.opt.breakindent = true -- Wrap indent to match  line start
vim.opt.cmdheight = 0 -- hide command line unless needed
vim.opt.completeopt = { "menu", "menuone", "noselect" } -- Options for insert mode completion
vim.opt.copyindent = true -- Copy the previous indentation on autoindenting
vim.opt.fileencoding = "utf-8" -- File content encoding for the buffer
vim.opt.fillchars = { eob = " " } -- Disable `~` on nonexistent lines
vim.opt.foldenable = true -- enable fold for nvim-ufo
vim.opt.foldlevel = 99 -- set high foldlevel for nvim-ufo
vim.opt.foldlevelstart = 99 -- start with all code unfolded
vim.opt.foldcolumn = vim.fn.has "nvim-0.9" == 1 and "1" or nil -- show foldcolumn in nvim 0.9
vim.opt.history = 100 -- Number of commands to remember in a history table
vim.opt.laststatus = 3 -- globalstatus
vim.opt.linebreak = true -- Wrap lines at 'breakat'
vim.opt.preserveindent = true -- Preserve indent structure as much as possible
vim.opt.pumheight = 10 -- Height of the pop up menu
vim.opt.scrolloff = 8 -- Number of lines to keep above and below the cursor
vim.opt.showtabline = 2 -- always display tabline
vim.opt.sidescrolloff = 8 -- Number of columns to keep at the sides of the cursor
vim.opt.signcolumn = "yes" -- Always show the sign column
vim.opt.smartindent = true -- Smarter autoindentation
vim.opt.timeoutlen = 500 -- Shorten key timeout length a little bit for which-key
vim.opt.undofile = true -- Enable persistent undo
vim.opt.updatetime = 300 -- Length of time to wait before triggering the plugin
vim.opt.virtualedit = "block" -- allow going past end of line in visual block mode
vim.opt.wrap = false -- Disable wrapping of lines longer than the width of window
vim.opt.writebackup = false -- Disable making a backup before overwriting a file

-- highlight copy section
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	pattern = { "*" },
	callback = function()
		vim.highlight.on_yank({
			timeout = 300,
		})
	end,
})
