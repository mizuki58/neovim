-- Requires plenary.nvim (loaded via plugins/plenary.lua)
vim.pack.add({
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
}, { load = true })

local ok, telescope = pcall(require, "telescope")
if ok then
  telescope.setup({})
end

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { silent = true })
