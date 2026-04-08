vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = { "*.c", "*.cpp" },
    callback = function()
        vim.lsp.buf.format({ async = false })
    end,
})
