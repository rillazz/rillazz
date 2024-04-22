return {
  {"jose-elias-alvarez/null-ls.nvim", ft={"python"}, opts=function()
  return require("configs.null-ls")
  end},
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua", "mypy", "ruff", "debugpy",
  			"html-lsp", "css-lsp" , "prettier", "pyright", "black"
  		},
  	},
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },
  {"rcarriga/nvim-dap-ui", branch="feat/new-api", dependencies={"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"}},
  {"theHamsta/nvim-dap-virtual-text"},
  {"mfussenegger/nvim-dap-python"},
  {"alexghergh/nvim-tmux-navigation"}
}
