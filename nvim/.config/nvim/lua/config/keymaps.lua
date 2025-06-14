-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/Decrement
-- keymap.set("n", "+", "<C-a>")
-- keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dbw", "vb_d")

-- Select all
-- keymap.set("n", "<C-a>", "gg<S-v>G")

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit<Return>")
keymap.set("n", "th", ":tabprevious<Return>")
keymap.set("n", "tl", ":tabnext<Return>")

-- Split window
keymap.set("n", "sd", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Scroll window
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Diagnostics
-- keymap.set("n", "<C-j>", function()
--   vim.diagnostic.goto_next()
-- end, opts)

-- Inlay Hints
keymap.set("n", "<leader>i", function()
  require("zenon.lsp").toggleInlayHints()
end)

-- Enable Rust Integration Test
keymap.set("n", "<leader>et", function()
  vim.cmd.RustAnalyzer({ "config", '{cargo={features={"integration_test"}}}' })
  vim.cmd.RustAnalyzer({ "reloadSettings" })
  vim.cmd.RustAnalyzer({ "restart" })
  vim.notify("Enable Integration Test")
end)
-- Disable Rust Integration Test
keymap.set("n", "<leader>dt", function()
  vim.cmd.RustAnalyzer({ "config", "{cargo={features={}}}" })
  vim.cmd.RustAnalyzer({ "reloadSettings" })
  vim.cmd.RustAnalyzer({ "restart" })
  vim.notify("Disabled Integration Test")
end)
