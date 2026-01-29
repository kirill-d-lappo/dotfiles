return {
  "mason-org/mason.nvim",
  dependencies = {
    "mason-org/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local m = require("mason")
    local m_lsp = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    m.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "yamllint",
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "isort", -- python formatter
        "black", -- python formatter
        "pylint", -- python linter
        "eslint_d", -- js linter
        -- "shfmt",
        "yamlfmt", -- yaml formatter by google
        "yaml-language-server",
        "lua-language-server",
      },
    })
  end,
}
