local opt = vim.opt
local g = vim.g

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.wrap = true
opt.breakindent = true
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.softtabstop = 2
opt.tabstop = 2
opt.number = true
opt.relativenumber = true

g.mapleader = ' '
g.maplocalleader = '-'
g.vimtex_view_method = 'zathura'

require('lualine').setup()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use { "catppuccin/nvim", as = "mocha" }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use 'lervag/vimtex'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0', -- or , branch = '0.1.x', 
    requires = { {'nvim-lua/plenary.nvim'} }
}
end)
