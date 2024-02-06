local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {

    }
  },
  {
    "mfussenegger/nvim-dap",
    init = function()
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function (_, opts)
      require("dap-go").setup(opts)
      require("core.utils").load_mappings("dap_go")
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function()
      return require("custom.configs.null-ls")
    end
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function (_, opts)
      require("gopher").setup(opts)
    end,
    build = function ()
      vim.cmd [[]]
    end
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function ()
      local cmp = require("cmp")
      local opts = require("plugins.configs.cmp")

      opts.mapping["<Up>"] = cmp.mapping.select_prev_item()
      opts.mapping["<Down>"] = cmp.mapping.select_next_item()
      return opts
    end
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      pickers = {
        oldfiles = {
          cwd_only = true
        }
      }
    }
  }
}

return plugins
