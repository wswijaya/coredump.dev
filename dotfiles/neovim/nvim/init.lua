require("wswijaya.plugins-setup")
require("wswijaya.core.options")
require("wswijaya.core.keymaps")
require("wswijaya.core.colorscheme")
require("wswijaya.plugins.comment")
require("wswijaya.plugins.nvim-tree")
require("wswijaya.plugins.lualine")
require("wswijaya.plugins.telescope")
require("wswijaya.plugins.nvim-cmp")
require("wswijaya.plugins.lsp.mason")
require("wswijaya.plugins.lsp.lspsaga")
require("wswijaya.plugins.lsp.lspconfig")
require("wswijaya.plugins.lsp.null-ls")
require("wswijaya.plugins.autopairs")
require("wswijaya.plugins.treesitter")
require("wswijaya.plugins.gitsigns")

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
