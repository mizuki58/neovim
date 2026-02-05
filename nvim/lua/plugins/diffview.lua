vim.pack.add({
  { src = "https://github.com/sindrets/diffview.nvim" },
})

require("diffview").setup({})

vim.keymap.set("n", "<leader>do", "<cmd>DiffviewOpen<CR>", { desc = "Diffview open" })
vim.keymap.set("n", "<leader>dc", "<cmd>DiffviewClose<CR>", { desc = "Diffview close" })
vim.keymap.set("n", "<leader>dh", "<cmd>DiffviewFileHistory<CR>", { desc = "Diffview history" })
vim.keymap.set("n", "<leader>dH", "<cmd>DiffviewFileHistory %<CR>", { desc = "History current file" })
vim.keymap.set("n", "<leader>dd", function()
  local view = require("diffview.lib").get_current_view()
  if view then
    vim.cmd("DiffviewClose")
  else
    vim.cmd("DiffviewOpen")
  end
end, { desc = "Diffview toggle" })
