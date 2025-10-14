return {
  { -- Highlight, edit, and navigate code
    lazy = false,
    'nvim-treesitter/nvim-treesitter',
    branch = 'master',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs',
    opts = {
      ensure_installed = { 'bash', 'c', 'go', 'html', 'lua', 'markdown', 'vim', 'vimdoc' },
      -- Autoinstall languages that are not installed
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    },
    config = function(_, opts)
      require('nvim-treesitter.configs').setup(opts)
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
