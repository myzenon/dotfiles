return {
  { "nanotech/jellybeans.vim", lazy = true },
  { "tribela/vim-transparent", lazy = false },
  { "junegunn/seoul256.vim", lazy = true },
  { "catppuccin/nvim", lazy = true },
  {
    "ribru17/bamboo.nvim",
    lazy = false,
    config = function()
      require("bamboo").setup({})
      require("bamboo").load()
    end,
  },
}
