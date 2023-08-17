require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'dockerfile',
    'go',
    'javascript',
    'lua',
    'python',
    'terraform',
    'tsx',
    'typescript',
    'vim',
    'yaml'
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  }
})

-- 'z' should fold with code expressions using treesitter
vim.opt.foldmethod = 'expr'
vim.opt.foldlevel = 9
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
