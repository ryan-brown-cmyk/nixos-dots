return {
    {
        "f-person/git-blame.nvim",
        opts = {
            enabled = true,
            message_template = "<author> (<date>)",
            date_format = "%r",
            display_virtual_text = false,
        },
    },
    {
        "nvim-lualine/lualine.nvim",
        opts = function(_, opts)
            local git_blame = require("gitblame")
            table.insert(
                opts.sections.lualine_x,
                { git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available }
            )
        end,
    },
}
