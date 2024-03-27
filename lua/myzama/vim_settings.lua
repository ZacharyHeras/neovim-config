vim.opt.guicursor = ''

vim.opt.nu = true
vim.opt.rnu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.opt.colorcolumn = '120'

vim.cmd([[colorscheme gruvbox]])

vim.api.nvim_set_hl(0, 'Normal', {ctermbg='none'})

vim.api.nvim_set_hl(0, 'LineNrAbove', {ctermfg='white', bold=true})
vim.api.nvim_set_hl(0, 'LineNr', {ctermfg='white', bold=false})
vim.api.nvim_set_hl(0, 'LineNrBelow', {ctermfg='white', bold=true})
