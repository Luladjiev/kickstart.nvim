vim.keymap.set('n', '<leader>tf', ':NvimTreeToggle<cr>', { desc = 'toggle File Explorer' })

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  dependencies = {
  },
  config = function()
    require('nvim-tree').setup()
  end,
}
