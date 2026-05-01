return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "master",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },

    cmd = "Telescope",

    keys = {
      {
        "<leader>ff",
        function()
          require("telescope.builtin").find_files()
        end,
        desc = "Find files",
      },
      {
        "<leader>fg",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc = "Live grep",
      },
      {
        "<leader>fb",
        function()
          require("telescope.builtin").buffers()
        end,
        desc = "Find buffers",
      },
      {
        "<leader>fh",
        function()
          require("telescope.builtin").help_tags()
        end,
        desc = "Find help",
      },
      {
        "<leader>fr",
        function()
          require("telescope.builtin").oldfiles()
        end,
        desc = "Recent files",
      },
    },

    opts = function()
      local actions = require("telescope.actions")

      return {
        defaults = {
          preview = {
            treesitter = false,
          },

          mappings = {
            i = {
              ["<C-d>"] = actions.delete_buffer,
              ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
              ["<Esc>"] = actions.close,
            },
            n = {
              ["d"] = actions.delete_buffer,
              ["q"] = actions.close,
              ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            },
          },
        },

        pickers = {
          find_files = {
            follow = true,
            hidden = true,
          },
          live_grep = {
            follow = true,
          },
          buffers = {
            sort_mru = true,
            ignore_current_buffer = true,
          },
        },
      }
    end,
  },
}
