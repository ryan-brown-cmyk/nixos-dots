-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.api.nvim_create_autocmd("BufReadPost", {
    pattern = "*.pdf",
    callback = function()
        local file_path = vim.api.nvim_buf_get_name(0)
        require("pdfview").open(file_path)
    end,
})

vim.lsp.config("texlab", {
    settings = {
        texlab = {
            build = {
                onSave = true,
            },
        },
    },
})
