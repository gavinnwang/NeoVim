return {
 {
  "tpope/vim-fugitive",
  cmd = {"Git"},
  priority = 1000,
},
{
	"nanotee/zoxide.vim",
	cmd={"Z", "Lz", "Tz", "Zi", "Lzi", "Tzi"}
},
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        config = function()
            require "configs.conform"
        end,
    },
    -- { "mrjones2014/smart-splits.nvim", lazy = false },
    {
        "christoomey/vim-tmux-navigator",
        lazy = false,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require "configs.lspconfig"
        end,
    },

    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server",
                "stylua",
                "html-lsp",
                "css-lsp",
                "prettier",
                "clangd",
                "gopls",
                "pyright",
                "clang-format",
                "millet",
                "rust-analyzer",
            },
        },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "vimdoc",
                "html",
                "css",
                "c",
                "cpp",
            },
        },
    },
    {
        "ray-x/lsp_signature.nvim",
        event = "VeryLazy",
        opts = {},
        config = function(_, opts)
            require("lsp_signature").setup(opts)
        end,
    },
    {
        "ggandor/leap.nvim",
        enabled = true,
        keys = {
            { "s", mode = { "n", "x", "o" }, desc = "Leap Forward to" },
            { "S", mode = { "n", "x", "o" }, desc = "Leap Backward to" },
            { "gs", mode = { "n", "x", "o" }, desc = "Leap from Windows" },
        },
        config = function(_, opts)
            local leap = require "leap"
            for k, v in pairs(opts) do
                leap.opts[k] = v
            end
            leap.add_default_mappings(true)
            vim.keymap.del({ "x", "o" }, "x")
            vim.keymap.del({ "x", "o" }, "X")
        end,
    },
    {
        "zbirenbaum/copilot.lua",
        event = "InsertEnter",
        config = function()
            require("copilot").setup {
                suggestion = { enabled = false },
                panel = { enabled = false },
                keymap = {
                    jump_prev = "[[",
                    jump_next = "]]",
                    accept = "<CR>",
                    refresh = "gr",
                    open = "<M-CR>",
                },
                layout = {
                    position = "bottom", -- | top | left | right
                    ratio = 0.4,
                },
            }
        end,
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            {
                "zbirenbaum/copilot-cmp",
                config = function()
                    require("copilot_cmp").setup()
                end,
            },
        },
        opts = {
            sources = {
                { name = "nvim_lsp", group_index = 2 },
                { name = "copilot", group_index = 2 },
                { name = "luasnip", group_index = 2 },
                { name = "buffer", group_index = 2 },
                { name = "nvim_lua", group_index = 2 },
                { name = "path", group_index = 2 },
            },
        },
    },
}
