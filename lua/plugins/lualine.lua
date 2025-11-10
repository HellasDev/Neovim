return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local function format_filetype()
      if vim.bo.filetype == "toggleterm" then
        return "Terminal"
      else
        return vim.bo.filetype
      end
    end

    require("lualine").setup({
      options = {
        theme = "rose-pine",
        icons_enabled = true,
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {format_filetype},
        lualine_z = {
          function()
            return os.date('%A %d %B')
          end
        }
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
      }
    })
  end,
}
