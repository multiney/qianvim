return {
  keys = {
    { "<leader>e", ":NvimTreeToggle<CR>", desc = "Toggle nvimtree" },
    { "<leader>o", ":NvimTreeFocus<CR>",  desc = "Focus nvimtree" },
  },
  cmd = { "NvimTreeToggle", "NvimTreeFocus", "NvimTree" },
  'nvim-tree/nvim-tree.lua',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    -- require "plugins.configs.nvim-tree"
    require("nvim-tree").setup {}
  end,
}
