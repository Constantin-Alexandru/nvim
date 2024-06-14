local ok, _ = pcall(vim.cmd, "colorscheme dracula")

if not ok then
  vim.notify("Unable to apply colorscheme dracula")
  return
end

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
