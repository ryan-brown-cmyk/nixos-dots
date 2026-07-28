-- This is to modify snack, more specfically, the layout. May need more later.
--
return {
    "folke/snacks.nvim",
    opts = {
        picker = {
            sources = {
                explorer = {
                    layout = {
                        layout = {
                            position = "right",
                        },
                    },
                },
            },
        },
    },
}
