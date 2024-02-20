return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>f', builtin.find_files, {desc="find file in project directory"})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {desc="find files in a git initalize directory"})
        vim.keymap.set('n', '<leader>', builtin.autocommands , {desc="autocommands"})
        vim.keymap.set('n', '<leader>t', ":Telescope<CR>", {desc="Telescope"})
    end
}
