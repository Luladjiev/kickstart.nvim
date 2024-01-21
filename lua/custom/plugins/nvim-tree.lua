return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  keys = {
    { '<leader>tf', '<cmd>NvimTreeToggle<cr>', desc = 'toggle File Explorer' }
  },
  config = function()
    require('nvim-tree').setup()
  end,
}
