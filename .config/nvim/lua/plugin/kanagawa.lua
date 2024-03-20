return {
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        -- require("kanagawa").setup({ transparent = true })
        require("kanagawa").setup()
        vim.cmd.colorscheme("kanagawa")
        -- vim.cmd.highlight("clear LineNr")
        -- vim.cmd.highlight("clear SignColumn")
    end
}
