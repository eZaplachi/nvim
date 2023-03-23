return {
  "ThePrimeagen/harpoon",
  keys = {
    {
      "<Leader>bha",
      ":lua require('harpoon.mark').add_file()",
      desc = "harpoon add",
    },
    {
      "<Leader>bhm",
      ":lua require('harpoon.ui').toggle_quick_menu()",
      desc = "harpoon toggle menu",
    },
    {
      "<Leader>bha",
      ":lua require('harpoon.mark').add_file()",
      desc = "harpoon add",
    },
    {
      "<Leader>bhn",
      ":lua require('harpoon.mark').nav_next()",
      desc = "harpoon next",
    },
    {
      "<Leader>bhp",
      ":lua require('harpoon.mark').nav_prev()",
      desc = "harpoon ",
    },
  },
}
