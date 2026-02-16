-- Requires plenary.nvim (loaded via plugins/plenary.lua)
vim.pack.add({
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
  { src = "https://github.com/nvim-telescope/telescope-live-grep-args.nvim" },
}, { load = true })

local telescope = require("telescope")

telescope.setup({
  extensions = {
    live_grep_args = {
      auto_quoting = true,
    },
  },
})
telescope.load_extension("live_grep_args")

local builtin = require("telescope.builtin")
local live_grep_args = telescope.extensions.live_grep_args

vim.keymap.set("n", "<leader>ff", builtin.find_files, { silent = true, desc = "Find files" })
vim.keymap.set("n", "<leader>fs", live_grep_args.live_grep_args, { silent = true, desc = "Live grep (args)" })
vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { silent = true, desc = "Find diagnostics" })
