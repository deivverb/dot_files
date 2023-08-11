local builtin = require('telescope.builtin')
-- in Normal mode search for Project Files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- in Normal mode search for git files
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- in Normal mode search for specific string (requires ripgrep) 
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input('Grep > ') });
end)

require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
            'node_modules'
        }
    }
}
