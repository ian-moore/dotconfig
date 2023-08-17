vim.opt.number = true      -- Line numbers in gutter
vim.opt.mouse = 'a'        -- Mouse support (:help mouse)
vim.opt.ignorecase = true  -- Ignore case in searches...
vim.opt.smartcase = true   -- ...unless the search has an uppercase letter
vim.opt.hlsearch =false    -- Don't highlight previous search results
vim.opt.wrap = true        -- Wrap text of long lines
vim.opt.breakindent = true -- Preserve indentation of wrapped lines

vim.opt.tabstop = 2       -- Tabstop character size
vim.opt.shiftwidth = 2    -- Line indent size
vim.opt.expandtab = true  -- Convert tabs to spaces

-- Settings suggested for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

-- Set this key before loading plugins
vim.g.mapleader = ' ' -- <leader> key mapping