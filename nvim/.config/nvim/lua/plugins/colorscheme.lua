return {
  { "metalelf0/jellybeans-nvim", lazy = true },
  { "tribela/vim-transparent", lazy = false },
  { "junegunn/seoul256.vim", lazy = true },
  { "catppuccin/nvim", lazy = true },
  {
    "ribru17/bamboo.nvim",
    lazy = true,
    config = function()
      require("bamboo").setup({})
    end,
  },
}
