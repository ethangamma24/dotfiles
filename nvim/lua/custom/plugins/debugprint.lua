return {
  'andrewferrier/debugprint.nvim',

  dependencies = {
    'echasnoviski/mini.nvim',
  },

  opts = {
    keymaps = {
      normal = {
        plain_below = '<Leader>g?p',
        plain_above = '<Leader>g?P',
        variable_below = '<Leader>g?v',
        variable_above = '<Leader>g?V',
        variable_below_alwaysprompt = '',
        variable_above_alwaysprompt = '',
        textobj_below = '<Leader>g?o',
        textobj_above = '<Leader>g?O',
        toggle_comment_debug_prints = '',
        delete_debug_prints = '',
      },
      insert = {
        plain = '<C-G>p',
        variable = '<C-G>v',
      },
      visual = {
        variable_below = '<Leader>g?v',
        variable_above = '<Leader>g?V',
      },
    },
    commands = {
      toggle_comment_debug_prints = 'ToggleCommentDebugPrints',
      delete_debug_prints = 'DeleteDebugPrints',
      reset_debug_prints_counter = 'ResetDebugPrintsCounter',
    },
  },

  -- keys = {
  --   { 'g?', mode = 'n' },
  --   { 'g?', mode = 'x' },
  --   { '<C-G>', mode = 'i' },
  -- },
  -- cmd = {
  --   'ToggleCommentDebugPrints',
  --   'DeleteDebugPrints',
  -- },

  version = '*',
}
