return {
  "tpope/vim-fugitive",
  keys = {
    {
      "<Leader>ga",
      ":Git add %f<CR>",
      desc = "add current buffer to git stage",
    },
    {
      "<Leader>gc",
      ":Git commit<CR>",
      desc = "commit staged",
    },
    {
      "<Leader>gec",
      "Git add .<CR> :Git commit<CR>",
      desc = "add and commit everything for cwd",
    },
    {
      "<Leader>gp",
      ":Git push<CR>",
      desc = "push",
    },
    {
      "<Leader>gl",
      ":Git pull<CR>",
      desc = "pull",
    },
    {
      "<Leader>gd",
      ":Git diff %f<CR>",
      desc = "diff for current buffer",
    },
    {
      "<Leader>ged",
      ":Git diff %f<CR>",
      desc = "diff for cwd",
    },
  },
}
