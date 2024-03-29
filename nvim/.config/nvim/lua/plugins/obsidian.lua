return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function ()
    require("obsidian").setup{
      workspaces = {
        {
          name = "second-brain",
          path = "~/workspace/secondbrain",
        }
      }
    }
  end
}
