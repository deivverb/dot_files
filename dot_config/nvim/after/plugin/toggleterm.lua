require('toggleterm').setup{
    -- size can be a number or function which is passed the current terminal
    size = function(term)
        if term.direction == 'horizontal' then
            return 15
        elseif term.direction == 'vertical' then
            return vim.o.columns * 0.4
        end
    end,
    open_mapping = [[<F12>]],
    highlights = {
        -- highlights which map to a highlight group name and a table of it's values
        -- NOTE: this is only a subset of values, any group placed here will be set for the terminal window split
        Normal = {
            link = 'Normal'
        },
        NormalFloat = {
            link = 'Normal'
        },
        FloatBorder = {
            -- guifg = '<VALUE-HERE>',
            -- guibg = '<VALUE-HERE>',
            link = 'FloatBorder'
        },
    },
}
