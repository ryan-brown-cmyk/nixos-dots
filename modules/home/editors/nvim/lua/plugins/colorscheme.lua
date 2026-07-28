return {
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = function()
                require("catppuccin").load()
            end,
        },
    },
    {
        "catppuccin/nvim",
        lazy = true,
        name = "catppuccin",
        opts = {
            color_overrides = {
                all = {
                    rosewater = "#f5e0dc",
                    flamingo = "#f2cdcd",
                    pink = "#f5c2e7",
                    mauve = "#cba6f7",
                    red = "#f38ba8",
                    maroon = "#eba0ac",
                    peach = "#fab387",
                    yellow = "#f6e878",
                    green = "#7cef76",
                    teal = "#00f0d9",
                    sky = "#00d3ec",
                    sapphire = "#00adfa",
                    blue = "#0069f8", -- fn text
                    lavender = "#7a34eb",
                    text = "#ff9100",
                    subtext1 = "#bcc2d7",
                    subtext0 = "#a6adc8",
                    overlay2 = "#9399b2",
                    overlay1 = "#7f849c",
                    overlay0 = "#6c7086",
                    surface2 = "#a31c59",
                    surface1 = "#4000c5", -- highlighting 
                    surface0 = "#3f196f", -- line select bar
                    base = "#000000",
                    mantle = "#000000",
                    crust = "#aaaaaa", -- things like the seperation lines.  Also, the background of the tabs.
                    -- This does look bad at the tabs, so can probably make it softer.
                },
            },
            lsp_styles = {
                underlines = {
                    errors = { "undercurl" },
                    hints = { "undercurl" },
                    warnings = { "undercurl" },
                    information = { "undercurl" },
                },
            },
            integrations = {
                aerial = true,
                alpha = true,
                cmp = true,
                dashboard = true,
                flash = true,
                fzf = true,
                grug_far = true,
                gitsigns = true,
                headlines = true,
                illuminate = true,
                indent_blankline = { enabled = true },
                leap = true,
                lsp_trouble = true,
                mason = true,
                mini = true,
                navic = { enabled = true, custom_bg = "lualine" },
                neotest = true,
                neotree = true,
                noice = true,
                notify = true,
                snacks = true,
                telescope = true,
                treesitter_context = true,
                which_key = true,
            },
            float = {
                --solid = true,
            },
            flavour = "mocha",
        },
    },
    specs = {
        {
            "akinsho/bufferline.nvim",
            optional = true,
            opts = function(_, opts)
                if (vim.g.colors_name or ""):find("catppuccin") then
                    opts.highlights = require("catppuccin.special.bufferline").get_theme()
                end
            end,
        },
    },
}
