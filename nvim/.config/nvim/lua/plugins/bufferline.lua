return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function ()
    require("bufferline").setup{}
    local wk = require("which-key")
    wk.register({
      b = {
        name = "Buffer",
        n = { "<cmd>bnext<cr>", "Buffer Next" },
        p = { "<cmd>bprevious<cr>", "Buffer Previous" },
      }
    }, { prefix = "<leader>" })
  end
}
