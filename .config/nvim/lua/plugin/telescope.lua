function config()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>b", builtin.buffers, {})
    vim.keymap.set("n", "<leader>f", builtin.find_files, {})
    vim.keymap.set("n", "<C-p>", builtin.git_files, {})
    vim.keymap.set("n", "<leader>ps", function()
        builtin.grep_string({ search = vim.fn.input("Grep: ") })
    end)
    vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})


    local actions = require("telescope.actions")

    require("telescope").setup({
        defaults = {
            mappings = {
                i = {
                    ["<Tab>"] = actions.move_selection_next,
                    ["<S-Tab>"] = actions.move_selection_previous
                }
            }
        }
    })
end

return {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = config,
}
