return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-fzf-native.nvim',
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    local telescope = require('telescope')

    telescope.setup({
      defaults = {
        path_display = { 'smart' },
      },
    })

--    telescope.load_extension('fzf')

    local builtin = require('telescope.builtin')

    local keymap = vim.keymap.set

    keymap('n', '<C-f>', builtin.find_files, {})
    keymap('n', '<C-g>', builtin.live_grep,  {})
  end
}
