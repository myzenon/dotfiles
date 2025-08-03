return {
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = true,
  },
  { "christoomey/vim-system-copy", lazy = false },
  {
    "prurigro/ReplaceWithRegister",
    branch = "1.42-update",
    lazy = false,
    keys = {
      { "pr", "<Plug>ReplaceWithRegisterOperator", desc = "ReplaceWithRegisterOperator" },
      { "prr", "<Plug>ReplaceWithRegisterLine", desc = "ReplaceWithRegisterLine" },
      { "pr", "<Plug>ReplaceWithRegisterVisual", mode = { "x" }, desc = "ReplaceWithRegisterVisual" },
    },
  },
  -- { "inkarkat/vim-ReplaceWithRegister", lazy = false },
  -- { "matze/vim-move", lazy = true },
  {
    "willothy/moveline.nvim",
    build = "make",
    config = function()
      local moveline = require("moveline")
      vim.keymap.set("n", "<M-S-K>", moveline.up)
      vim.keymap.set("n", "<M-S-J>", moveline.down)
      vim.keymap.set("v", "<M-S-K>", moveline.block_up)
      vim.keymap.set("v", "<M-S-J>", moveline.block_down)
    end,
  },
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  --   config = function()
  --     vim.g.VM_maps = {
  --       ["Add Cursor Down"] = "<Tab>j", -- new cursor down
  --       ["Add Cursor Up"] = "<Tab>k", -- new cursor up
  --     }
  --   end,
  -- },
  {
    "easymotion/vim-easymotion",
    lazy = true,
    keys = {
      { "<leader>/", "<Plug>(easymotion-sn)", desc = "Find text" },
      { "<leader>n", "<Plug>(easymotion-next)", desc = "Find next text" },
      { "<leader>N", "<Plug>(easymotion-prev)", desc = "Find previous text" },
    },
  },
  {
    "chrisgrieser/nvim-spider",
    keys = {
      {
        "<leader>e",
        "<cmd>lua require('spider').motion('e')<CR>",
        mode = { "n", "o", "x" },
      },
      {
        "<leader>w",
        "<cmd>lua require('spider').motion('w')<CR>",
        mode = { "n", "o", "x" },
      },
    },
  },
  -- Next target
  {
    "wellle/targets.vim",
  },
  -- {
  --   "sustech-data/wildfire.nvim",
  --   event = "VeryLazy",
  --   dependencies = { "nvim-treesitter/nvim-treesitter" },
  --   config = function()
  --     require("wildfire").setup({
  --       keymaps = {
  --         init_selection = "<CR>",
  --         node_incremental = "<CR>",
  --         node_decremental = "<Tab>",
  --       },
  --     })
  --   end,
  -- },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
  {
    "mluders/comfy-line-numbers.nvim",
    config = {
      labels = {
        "1",
        "2",
        "3",
        "4",
        "5",
        "11",
        "12",
        "13",
        "14",
        "15",
        "21",
        "22",
        "23",
        "24",
        "25",
        "31",
        "32",
        "33",
        "34",
        "35",
        "41",
        "42",
        "43",
        "44",
        "45",
        "51",
        "52",
        "53",
        "54",
        "55",
        "111",
        "112",
        "113",
        "114",
        "115",
        "121",
        "122",
        "123",
        "124",
        "125",
        "131",
        "132",
        "133",
        "134",
        "135",
        "141",
        "142",
        "143",
        "144",
        "145",
        "151",
        "152",
        "153",
        "154",
        "155",
        "211",
        "212",
        "213",
        "214",
        "215",
        "221",
        "222",
        "223",
        "224",
        "225",
        "231",
        "232",
        "233",
        "234",
        "235",
        "241",
        "242",
        "243",
        "244",
        "245",
        "251",
        "252",
        "253",
        "254",
        "255",
      },
    },
  },
}
