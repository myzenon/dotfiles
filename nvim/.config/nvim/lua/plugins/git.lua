return {
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    keys = {
      {
        "<leader>gg",
        ":LazyGit<CR>",
        desc = "LazyGit",
      },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    keys = {
      {
        "<leader>gb",
        ":Gitsigns blame_line<CR>",
        desc = "Git blame",
      },
    },
  },
  {
    "tpope/vim-fugitive",
    lazy = false,
    keys = {
      {
        "<leader>gd",
        ":Gvdiffsplit<CR>",
        desc = "Git Verical Diff",
      },
    },
  },
  {
    "sindrets/diffview.nvim",
  },
  -- {
  --   "tanvirtin/vgit.nvim",
  --   dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" },
  --   -- Lazy loading on 'VimEnter' event is necessary.
  --   event = "VimEnter",
  --   config = function()
  --     require("vgit").setup()
  --   end,
  -- },
}
