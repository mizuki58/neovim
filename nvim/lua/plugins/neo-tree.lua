vim.pack.add({
  { src = "https://github.com/nvim-neo-tree/neo-tree.nvim", version = "v3.x" },
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
  { src = "https://github.com/MunifTanjim/nui.nvim" },
})

vim.g.neo_tree_remove_legacy_commands = 1

require("neo-tree").setup({
  close_if_last_window = true,
})

vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { silent = true })
vim.keymap.set("n", "<leader>o", "<cmd>Neotree focus<CR>", { silent = true })
