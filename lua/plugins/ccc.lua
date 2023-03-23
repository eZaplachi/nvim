return {
  "uga-rosa/ccc.nvim",
  keys = {
    {
      "<Leader>cp",
      ":CccPick<CR>",
      desc = "Pick color",
    },
  },
  config = function()
    require("ccc").setup({})
  end,
}
