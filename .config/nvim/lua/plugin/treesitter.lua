return  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "lua", "rust", "zig", "haskell", "python", "glsl", "kotlin" },
            sync_install = false,
            auto_install = false,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            }
        })
    end
}
