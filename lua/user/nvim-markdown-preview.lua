local M = {
    "davidgranstrom/nvim-markdown-preview",
    config  = function ()
        vim.cmd [[let g:nvim_markdown_preview_theme = 'github']]
        vim.cmd [[let g:nvim_markdown_preview_format = 'markdown']]

    end
}

return M
