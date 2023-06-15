return {
    keys = {
        { "<leader>e", ":NvimTreeToggle<CR>", desc = "Toggle nvimtree" },
        { "<leader>o", ":NvimTreeFocus<CR>", desc = "Focus nvimtree" },
    },
    cmd = { "NvimTreeToggle", "NvimTreeFocus", "NvimTree" },
    'nvim-tree/nvim-tree.lua',
    lazy = true,
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require "plugins.configs.nvim-tree"
    end,
}
