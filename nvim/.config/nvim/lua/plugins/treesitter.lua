return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local treesitterConfig = require("nvim-treesitter.configs")
    treesitterConfig.setup({
      ensure_installed = {
        "bash",
        "c",
        "go",
        "lua",
        "markdown",
        "markdown_inline",
        "vimdoc",
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
