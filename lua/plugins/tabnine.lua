return {
  "codota/tabnine-nvim",
  build = "./dl_binaries.sh",
  keys = {
    {
      "<Leader>t9",
      ":TabnineHub<CR>",
      desc = "Tabnine hub",
    },
  },
  config = function()
    require("tabnine").setup({
      disable_auto_comment = true,
      accept_keymap = "<Tab>",
      dismiss_keymap = "<C-]>",
      debounce_ms = 800,
      suggestion_color = { gui = "#808080", cterm = 244 },
      exclude_filetypes = { "TelescopePrompt" },
    })
  end,
}
