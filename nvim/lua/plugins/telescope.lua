-- Requires plenary.nvim (loaded via plugins/plenary.lua)
vim.pack.add({
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
}, { load = true })

local ok, telescope = pcall(require, "telescope")
if ok then
  telescope.setup({})
end

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { silent = true, desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fs", builtin.live_grep, { silent = true, desc = "Telescope live grep" })
