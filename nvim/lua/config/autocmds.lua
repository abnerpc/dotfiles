local autocmd = vim.api.nvim_create_autocmd

-- Filetype overrides
autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.jinja2",
  callback = function()
    vim.opt_local.filetype = "html"
  end,
})

-- Python indent
autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.py",
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
  end,
})

-- Web indent
autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.html", "*.css", "*.js", "*.jinja2" },
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
  end,
})

-- Netrw cleanup
autocmd("FileType", {
  pattern = "netrw",
  command = "setlocal bufhidden=delete",
})

