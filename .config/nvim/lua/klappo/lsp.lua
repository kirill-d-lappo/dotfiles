local config_lsp = vim.lsp.config
local enable_lsp = vim.lsp.enable

local utils = require("klappo.utils")

config_lsp("powershell_es", {
  cmd = { "lua-language-server" },
  filetypes = "lua",
  root_markers = {
    ".git",
    ".luarc.json",
    ".luarc.jsonc",
  },
  diagnostics = {
    globals = { "vim" },
  },
})

config_lsp("powershell_es", {
  bundle_path = utils.get_mason_package_folder_path("powershell-editor-services"),
})

config_lsp("omnisharp", {
  cmd = { "dotnet", utils.get_mason_package_folder_path("omnisharp") .. "/libexec/OmniSharp.dll" },
  enable_roslyn_analysers = true,
  enable_import_completion = true,
  organize_imports_on_format = true,
  enable_decompilation_support = true,
  filetypes = { "cs", "vb", "csproj", "sln", "slnx", "props", "csx", "targets" },
})

enable_lsp("lua_ls")
enable_lsp("ts_ls")
enable_lsp("powershell_es")
enable_lsp("omnisharp")
