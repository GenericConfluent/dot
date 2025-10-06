return  {
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
            parser_config.dbdia = {
                install_info = {
                    url = "https://github.com/GenericConfluent/tree-sitter-erd",
                    files = {"src/parser.c"},
                    branch = "main",
                    requires_generate_from_grammar = true,
                    generate_requires_npm = false,
                },
                filetype = "dbdia"
            }
            vim.treesitter.language.register("dbdia", "dbdia")


            require("nvim-treesitter.configs").setup({
                ensure_installed = { "c", "lua", "rust", "zig", "haskell", "python", "glsl", "kotlin" },
                sync_install = false,
                auto_install = false,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                }
            })
        end,
    },
    { 
        "nvim-treesitter/playground"
    },
    {
        "GenericConfluent/tree-sitter-erd",
        dependencies = {"nvim-treesitter/nvim-treesitter"},
        config = function()
            require("erd").setup()
        end,
    }
}
