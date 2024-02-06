local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require('dap-go').debug_test()
      end,
      "Debug go test"
    },
    ["<leader>dgl"] = {
      function()
        require('dap-go').debug_last()
      end,
      "Debug last go test"
    }
  }
}

M.jfortunka = {
  n = {
    ["k"] = {"kzz", "move up while keeping caret centered"},
    ["j"] = {"jzz", "move down while keeping caret centered"},
    ["<C-d>"] = {"<C-d>zz", "half page down with caret centered"},
    ["<C-u>"] = {"<C-u>zz", "half page up with caret centered"},
    ["n"] = {"nzzzv", "keeps caret centered when searching"},
    ["N"] = {"Nzzzv", "keeps caret centered when searching"}
  },
  v = {
    ["J"] = {":m '>+1<CR>gv=gv", "move selected lines up"},
    ["K"] = {":m '<-2<CR>gv=gv", "move selected lines down"}
  }
}

return M
