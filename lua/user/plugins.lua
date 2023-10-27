local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({
	-- Packer can manage itself
	"wbthomason/packer.nvim",
	"shaunsingh/nord.nvim",
	{ "neovim/nvim-lspconfig", commit = "f11fdff7e8b5b415e5ef1837bdcdd37ea6764dda" }, -- enable LSP
	{ "williamboman/mason.nvim", commit = "c2002d7a6b5a72ba02388548cfaf420b864fbc12" }, -- simple to use language server installer
	{ "williamboman/mason-lspconfig.nvim", commit = "0051870dd728f4988110a1b2d47f4a4510213e31" },
	{ "jose-elias-alvarez/null-ls.nvim", commit = "c0c19f32b614b3921e17886c541c13a72748d450" }, -- for formatters and linters
	"nvim-lua/plenary.nvim",
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons", -- optional
		},
	},
	{ "SirVer/ultisnips", dependencies = {
		"quangnguyen30192/cmp-nvim-ultisnips",
		"honza/vim-snippets",
	} },
	{ "rafamadriz/friendly-snippets", commit = "2be79d8a9b03d4175ba6b3d14b082680de1b31b1" }, -- a bunch of snippets to use

	-- Cmp
	{ "hrsh7th/nvim-cmp", commit = "b0dff0ec4f2748626aae13f011d1a47071fe9abc" }, -- The completion plugin
	{ "hrsh7th/cmp-buffer", commit = "3022dbc9166796b644a841a02de8dd1cc1d311fa" }, -- buffer completions
	{ "hrsh7th/cmp-path", commit = "447c87cdd6e6d6a1d2488b1d43108bfa217f56e1" }, -- path completions
	{ "saadparwaiz1/cmp_luasnip", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" }, -- snippet completions
	{ "hrsh7th/cmp-nvim-lsp", commit = "3cf38d9c957e95c397b66f91967758b31be4abe6" },
	{ "hrsh7th/cmp-nvim-lua", commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21" },
	"lervag/vimtex",
})
