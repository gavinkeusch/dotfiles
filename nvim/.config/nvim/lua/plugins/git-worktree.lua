return {
  "ThePrimeagen/git-worktree.nvim",
  init = function()
    require("git-worktree").setup()
    require("telescope").load_extension("git_worktree")
  end,
}
