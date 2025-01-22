return {
  'rcarriga/nvim-notify',
  opts = {
    stages = 'fade',
    level = 'DEBUG',
    timeout = 150,
    fps = 60,
    background_colour = '#000000',
    max_height = function()
      return math.floor(vim.o.lines * 0.50)
    end,
    max_width = function()
      return math.floor(vim.o.columns * 0.45)
    end,
    on_open = function(win)
      vim.api.nvim_win_set_config(win, { focusable = false })
    end,
  },
}
