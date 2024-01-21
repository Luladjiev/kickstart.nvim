local function _lazygit_toggle()
  local Terminal = require("toggleterm.terminal").Terminal
  local lazygit = Terminal:new { cmd = "lazygit", direction = "float", hidden = true }

  lazygit:toggle()
end

return {
  'akinsho/toggleterm.nvim',
  version = "*",
  keys = {
    { "<leader>at", "<cmd>ToggleTerm<cr>", desc = "Terminal" },
    { "<leader>al", _lazygit_toggle,       desc = "LazyGit" }
  },
  config = function()
    require("toggleterm").setup({})
  end
}

