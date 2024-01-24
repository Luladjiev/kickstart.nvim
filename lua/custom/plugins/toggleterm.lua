local function _lazygit_toggle()
  local Terminal = require('toggleterm.terminal').Terminal
  local lazygit = Terminal:new { cmd = 'lazygit', direction = 'float', hidden = true }

  lazygit:toggle()
end

return {
  'akinsho/toggleterm.nvim',
  version = '*',
  keys = {
    { '<leader>at', '<cmd>ToggleTerm<cr>', desc = 'Terminal' },
    { '<leader>al', _lazygit_toggle, desc = 'LazyGit' },
  },
  config = function()
    if vim.fn.has 'win32' == 1 then
      local powershell_options = {
        shell = vim.fn.executable 'pwsh' == 1 and 'pwsh' or 'powershell',
        shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;',
        shellredir = '-RedirectStandardOutput %s -NoNewWindow -Wait',
        shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode',
        shellquote = '',
        shellxquote = '',
      }

      for option, value in pairs(powershell_options) do
        vim.opt[option] = value
      end
    end

    require('toggleterm').setup()
  end,
}
