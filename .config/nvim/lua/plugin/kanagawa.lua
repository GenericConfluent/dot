return {
    'Shatur/neovim-ayu',
    lazy = false,
    priority = 1000,
    config = function()
        -- require("kanagawa").setup({ transparent = true })
        require("ayu").setup {}
        vim.cmd.colorscheme("ayu")
        -- vim.cmd.highlight("clear LineNr")
        -- vim.cmd.highlight("clear SignColumn")
    end
}
