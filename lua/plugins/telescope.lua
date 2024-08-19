return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        local builtin = require('telescope.builtin')
        local telescope = require('telescope')

        telescope.setup{
            defaults = {
                winblend = 0,
                layout_config = {
                    horizontal = {
                        preview_width = 0.55,
                    },
                },
            },
        }

        -- Set keymaps
        vim.keymap.set('n', '<C-p>', builtin.find_files, {})
        vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
    end
}
