return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
      },
    })

    local map = require("helpers.keymap").map

    map("n", "<C-f>", builtin.find_files)
    map("n", "<C-g>", builtin.live_grep)

    -- TODO: Change Telescope layout using: https://github.com/nvim-telescope/telescope.nvim/wiki/Configuration-Recipes#layouts
  end
}
