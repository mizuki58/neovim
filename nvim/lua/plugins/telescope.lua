-- Requires plenary.nvim (loaded via plugins/plenary.lua)
vim.pack.add({
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
  { src = "https://github.com/nvim-telescope/telescope-live-grep-args.nvim" },
}, { load = true })

local ok, telescope = pcall(require, "telescope")
if ok then
  telescope.setup({
    extensions = {
      live_grep_args = {
        auto_quoting = true,
      },
    },
  })
  pcall(telescope.load_extension, "live_grep_args")
end

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { silent = true, desc = "Telescope find files" })
local lga_ok, lga = pcall(function()
  return require("telescope").extensions.live_grep_args
end)
if lga_ok then
  vim.keymap.set("n", "<leader>fs", lga.live_grep_args, { silent = true, desc = "Telescope live grep (args)" })
else
  vim.keymap.set("n", "<leader>fs", builtin.live_grep, { silent = true, desc = "Telescope live grep" })
end
