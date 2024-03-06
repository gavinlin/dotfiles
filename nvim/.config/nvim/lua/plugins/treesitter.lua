return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local treesitterConfig = require("nvim-treesitter.configs")
    treesitterConfig.setup({
      ensure_installed = { "c", "lua" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
