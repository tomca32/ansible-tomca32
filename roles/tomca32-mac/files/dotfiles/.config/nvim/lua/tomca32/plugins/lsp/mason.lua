return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim"
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

    mason.setup()
    mason_lspconfig.setup({
      ensure_installed = {
        "typos_lsp",
        "clangd",
        "bashls",
        "cssls",
        "dockerls",
        "docker_compose_language_service",
        "html",
        "htmx",
        "tsserver",
        "jinja_lsp",
        "jqls",
        "kotlin_language_server",
        "lua_ls",
        "autotools_ls",
        "markdown_oxide",
        "pyre",
        "rust_analyzer",
        "sqlls",
        "stimulus_ls",
        "taplo",
        "tailwindcss",
        "yamlls",
      }
    })
  end
}
