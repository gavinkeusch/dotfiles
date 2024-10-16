-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local copilot_enabled = false
local wk = require("which-key")

wk.add({
  {
    "<leader>at",
    function()
      local copilot = require("copilot.command")
      if copilot_enabled then
        copilot.disable()
        copilot_enabled = false
      else
        copilot.enable()
        copilot_enabled = true
      end
      vim.schedule(function()
        copilot.status()
      end)
    end,
    desc = "toggle copilot",
  },
  {
    "<leader>+",
    "<cmd>resize +4<cr>",
    desc = "Increase Window Height",
  },
  {
    "<leader>_",
    "<cmd>resize -4<cr>",
    desc = "Descrease Window Height",
  },
  {
    "<leader>)",
    "<cmd>vertical resize +4<cr>",
    desc = "Increase Window Width",
  },
  {
    "<leader>(",
    "<cmd>vertical resize -4<cr>",
    desc = "Descrease Window Width",
  },
  {
    "<leader>sw",
    "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>",
    desc = "Search Worktree",
  },
})
