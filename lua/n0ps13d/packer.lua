-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.vim]]

return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- colorscheme
	use 'gruvbox-community/gruvbox'

    -- configurations for nvim lsp
    use 'neovim/nvim-lspconfig'
end)
