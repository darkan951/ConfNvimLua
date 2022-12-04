vim.cmd [[:PackerSync]]

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.termguicolors = true
vim.cmd [[silent! colorscheme duskfox]]

vim.opt.scrolloff = 8
vim.wo.colorcolumn = "80"

vim.opt.signcolumn = "yes"

vim.o.clipboard = "unnamedplus"
vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"
vim.opt.guifont = "Monospace:h11"

vim.o.splitbelow = true
vim.o.splitright = true


-- config NvimTree
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.cmd [[:NvimTreeToggle]]