return {

  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        -- pyright = {},

        html = {
          filetypes = { "html", "templ" },
        },
        htmx = {
          filetypes = { "html", "templ" },
        },
        tailwindcss = {
          filetypes_include = { "templ" },
          init_options = { userLanguages = { templ = "html" } },
        },
      },
    },
  },

  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "gopls",
        "templ",
      },
    },
  },
}
