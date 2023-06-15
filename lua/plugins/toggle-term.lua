return {
    -- amongst your other plugins
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        event = "VeryLazy",
        -- config = function()
        --     require("toggleterm").setup({
        --         direction = "float",
        --     })
        -- end,
        config = function()
            require("plugins.configs.toggle-term")
        end,
    },
}
