vim.g.mapleader = ' '
-- vim.keymap.set('n', '<leader>pv', vim.cmd.Ex) -- will not work with netrw being disabled

vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { noremap = true })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { noremap = true })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { noremap = true })
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { noremap = true })

vim.keymap.set('n', '<leader>v', vim.cmd.vsplit, { desc = 'Split Vertical', noremap = true })
vim.keymap.set('n', '<leader>h', vim.cmd.split, { desc = 'Split Horizontal', noremap = true })
