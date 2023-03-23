-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")

local M = {}

function M.map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local map = M.map

-- Workman remap
map("n", "l", "o")
map("n", "o", "l")
map("n", "L", "O")
map("n", "O", "L")
map("n", "j", "n")
map("n", "n", "j")
map("n", "J", "N")
map("n", "N", "J")
map("n", "gn", "gj")
map("n", "gj", "gn")
map("n", "dn", "dj")
map("n", "dj", "dn")
map("n", "k", "e")
map("n", "e", "k")
map("n", "K", "E")
map("n", "E", "<nop>")
map("n", "gk", "ge")
map("n", "ge", "gk")
map("n", "dk", "de")
map("n", "dj", "dn")
map("n", "h", "y")
map("n", "y", "h")
map("n", "yy", "hh")
map("n", "H", "Y")
map("n", "Y", "H")

map("v", "l", "o")
map("v", "o", "l")
map("v", "L", "O")
map("v", "O", "L")
map("v", "j", "n")
map("v", "n", "j")
map("v", "J", "N")
map("v", "N", "J")
map("v", "gn", "gj")
map("v", "gj", "gn")
map("v", "k", "e")
map("v", "e", "k")
map("v", "K", "E")
map("v", "E", "<nop>")
map("v", "gk", "ge")
map("v", "ge", "gk")
map("v", "h", "y")
map("v", "y", "h")
map("v", "H", "Y")
map("v", "Y", "H")

map("o", "n", "j")
map("o", "j", "n")
map("o", "k", "e")
map("o", "e", "k")
map("o", "h", "y")
map("o", "y", "h")
map("o", "o", "l")
map("o", "l", "o")

-- better up/down
map("n", "n", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map("n", "e", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-y>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-n>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<C-e>", "<C-w>k", { desc = "Go to upper window" })
map("n", "<C-o>", "<C-w>l", { desc = "Go to right window" })

-- Move Lines
map("n", "<A-n>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<A-e>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<A-n>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<A-e>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<A-n>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<A-e>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- buffers
if Util.has("bufferline.nvim") then
  map("n", "<S-y>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
  map("n", "<S-o>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
  map("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
  map("n", "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
else
  map("n", "<S-y>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
  map("n", "<S-o>", "<cmd>bnext<cr>", { desc = "Next buffer" })
  map("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
  map("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })
end

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
map("n", "k", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
map("x", "k", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
map("o", "k", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
map("n", "K", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
map("x", "K", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
map("o", "K", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
