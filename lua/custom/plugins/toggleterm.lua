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
    local shell
    if vim.fn.has("win32") then
      shell = "pwsh.exe"
    end

    require("toggleterm").setup({
      shell = shell
    })
  end
}

