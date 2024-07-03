return {
    --"liuchengxu/space-vim-dark"
    -- "drewtempelmeyer/palenight.vim",
    -- "bluz71/vim-nightfly-colors",
    "craftzdog/solarized-osaka.nvim",
    -- name = "nightfly",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd([[colorscheme solarized-osaka]])
    end,
}
