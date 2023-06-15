return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            -- IMPORTANT: make sure to setup neodev BEFORE lspconfig
            "folke/neodev.nvim",
        },
        event = "BufRead",
        config = function()
            require "plugins.configs.lspconfig"
        end,
    },
    {
        "williamboman/mason.nvim",
        cmd = {
            "Mason",
            "MasonInstall",
            "MasonUninstall",
            "MasonUninstallAll",
            "MasonLog",
        },
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_uninstalled = "✗",
                    package_pending = "⟳",
                },
            },
        },
        event = "VeryLazy",
        build = ":MasonUpdate",
        config = function()
            require "plugins.configs.mason"
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        cmd = { "LspInstall", "LspUninstall" },
        event = "VeryLazy",
        config = function()
            require "plugins.configs.mason-lspconfig"
        end,
    },
    {
        "folke/neodev.nvim",
        event = "VeryLazy",
        config = function()
            require("neodev").setup({})
        end,
    },
}
