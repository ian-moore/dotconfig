local whichkey = require("which-key")

whichkey.register({
  ["<leader>y"] = { '"+y', "Yank selection to clipboard" },
  ["<leader>p"] = { '"+p', "Paste from clipboard" },
})

whichkey.register({
  ["<leader>y"] = { '"+y', "Yank selection to clipboard" },
  ["<leader>p"] = { '"+p', "Paste from clipboard" },
}, { mode = "v" })

local telescope = require("telescope.builtin")

whichkey.register({
  ["<leader>f"] = {
    name = "files",
    f = { telescope.find_files, "Find file" },
    g = { telescope.live_grep, "Grep files" },
    r = { telescope.git_files, "Git repository files" },
  }
})

whichkey.register({
  ['<leader>g'] = {
    name = 'git',
    d = { '<cmd>Gitsigns diffthis<cr>', 'Git diff current file' },
    b = { '<cmd>Git blame<cr>', 'Git blame current file' },
  }
})

whichkey.register({
  ['<leader>t'] = { '<cmd>NvimTreeToggle<cr>', 'Toggle project tree' }
})

whichkey.register({
  ['<leader>e'] = { vim.diagnostic.open_float, 'Open Code Diagnostic/Error' },
})

-- 's' to search forwards
-- 'S' to search backwards
require("leap").add_default_mappings()
