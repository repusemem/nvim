return {
  "nvim-treesitter/nvim-treesitter",

  branch = "master",
  lazy = false,

  build = ":TSUpdate",

  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "javascript",
        "vim",
        "vimdoc",
        "markdown",
        "markdown_inline",
        "typescript",
        "python",
        "lua",
        "c",
        "caddy",
        "cmake",
        "css",
        "devicetree",
        "gitcommit",
        "gitignore",
        "glsl",
        "go",
        "graphql",
        "http",
        "just",
        "kconfig",
        "meson",
        "ninja",
        "nix",
        "php",
        "scss",
        "sql",
        "svelte",
        "vue",
        "wgsl",
      },

      sync_install = false,
      auto_install = true,

      highlight = {
        enable = true,

        -- Tắt regex highlight cũ để tránh xung đột
        additional_vim_regex_highlighting = false,
      },

      indent = {
        enable = true,
      },
    })
  end,
}
