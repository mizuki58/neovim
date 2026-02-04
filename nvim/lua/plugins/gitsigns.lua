vim.pack.add({
  { src = "https://github.com/lewis6991/gitsigns.nvim" },
})

require("gitsigns").setup({
  current_line_blame = true,
  on_attach = function(bufnr)
    local gs = require("gitsigns")
    vim.keymap.set("n", "<leader>hp", gs.preview_hunk, { buffer = bufnr, silent = true })
    vim.keymap.set("n", "<leader>hi", gs.preview_hunk_inline, { buffer = bufnr, silent = true })
  end,
})
