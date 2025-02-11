return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
    { 'nvim-treesitter/nvim-treesitter' },
    {
      'saghen/blink.cmp',
      dependencies = 'rafamadriz/friendly-snippets',
      version = '*',
      opts = {
        keymap = { preset = 'default' },
        appearance = {
          use_nvim_cmp_as_default = true,
          nerd_font_variant = 'mono',
        },
        sources = {
          default = { 'lsp', 'path', 'buffer', 'codecompanion' },
          cmdline = {},
        },
      },
    },
  },
  opts = {
    strategies = {
      chat = { adapter = 'xai' },
      inline = { adapter = 'xai' },
    },
    adapters = {
      xai = function()
        return require('codecompanion.adapters').extend('xai', {
          env = {
            api_key = 'cmd:op read op://nnzgviy7md5gamnqae36umwira/xAI-CodeCompanion/notesPlain',
          },
        })
      end,
    },
  },
}
