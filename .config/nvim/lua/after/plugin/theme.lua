require('kanagawa').setup({
  overrides = function(colors)
    return {}
  end,
  theme = "dragon",
  background = { dark = "dragon", light = "lotus" },
})


vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  callback = function() vim.highlight.on_yank() end,
  group = vim.api.nvim_create_augroup("kanagawa", { clear = true }),
})



vim.cmd("colorscheme kanagawa")
