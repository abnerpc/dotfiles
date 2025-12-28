local map = vim.keymap.set

-- Copy relative file path
map("n", "<leader>c", function()
  vim.fn.setreg("+", vim.fn.expand("%:."))
end, { desc = "Copy file path" })

-- Clipboard operations
map("v", "<leader>y", '"+y', { silent = true })
map("n", "<leader>yy", '"+yy', { silent = true })
map("v", "<leader>p", '"+p', { silent = true })
map("n", "<leader>p", '"+p', { silent = true })

map("n", "<leader>d", '"_d')
map("n", "<leader>dd", '"_dd')
map("v", "<leader>d", '"_d')
