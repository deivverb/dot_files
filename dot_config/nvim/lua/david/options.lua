-- Displays line numbers in the left gutter of the editor
vim.opt.nu = true
-- Relative line numbers
vim.opt.rnu = true

-- Sets the number of spaces a tab character should represent
vim.opt.tabstop = 4
-- Sets the number of spaces inserted for a tab character when editing.
vim.opt.softtabstop = 4
-- Sets the number of spaces used for indentation
vim.opt.shiftwidth = 4
-- Replaces tabs with spaces when editing
vim.opt.expandtab = true

-- Automatically indents new lines based on the previous line
vim.opt.smartindent = true

-- Turns off highlighting of search matches
vim.opt.hlsearch = false
-- Highlights search matches as you type them
vim.opt.incsearch = true
-- Ignores search term character case (best used with smartcase)
vim.opt.ignorecase = true
-- Use case-sensitive search when there is an uppercase letter in the search query
vim.opt.smartcase = true

-- Enables true color support in the terminal
vim.opt.termguicolors = true

-- Sets the number of lines to keep visible above and below the cursor when scrolling
vim.opt.scrolloff = 8
-- Always shows the sign column, even if there are no signs to display
vim.opt.signcolumn = "yes"

-- Reduces the time it takes for Vim to trigger CursorHold events
vim.opt.updatetime = 50

-- Highlights a vertical column at column 100
vim.opt.colorcolumn = "100"

-- Sets the leader key to spacebar
vim.g.mapleader = " " 
