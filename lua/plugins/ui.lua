return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })

      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "rcarrigo/nvim-notify",
    opts = {
      timeout = 10000,
    },
  },
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>" },
    },
    opts = {
      options = {
        mode = "tabs",
        show_buffer_close_icons = false,
        show_close_icon = true,
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "seoul256",
      },
    },
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
        ██████╗██╗   ██╗██████╗ ██████╗      ██╗███████╗██████╗ ██████╗ ██╗   ██╗
       ██╔════╝╚██╗ ██╔╝██╔══██╗╚════██╗     ██║██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝
       ██║      ╚████╔╝ ██████╔╝ █████╔╝     ██║█████╗  ██████╔╝██████╔╝ ╚████╔╝ 
       ██║       ╚██╔╝  ██╔══██╗ ╚═══██╗██   ██║██╔══╝  ██╔══██╗██╔══██╗  ╚██╔╝  
       ╚██████╗   ██║   ██████╔╝██████╔╝╚█████╔╝███████╗██║  ██║██║  ██║   ██║   
        ╚═════╝   ╚═╝   ╚═════╝ ╚═════╝  ╚════╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   
      ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
