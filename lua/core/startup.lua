-- Open nvim-tree on start

local function open_nvim_tree(data)
  -- Make the background transparent
  vim.cmd[[hi NvimTreeNormal guibg=NONE ctermbg=NONE]] 

  -- Open nvim-tree
  require("nvim-tree.api").tree.toggle({focus = false})
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
