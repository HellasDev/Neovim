return {
  "echasnovski/mini.nvim",
  -- No lazy = true, init needs to run early
  init = function()
    -- This must run early to mock nvim-web-devicons
    package.preload["nvim-web-devicons"] = function()
      require("mini.icons").mock_nvim_web_devicons()
      return package.loaded["nvim-web-devicons"]
    end
  end,
  config = function()
    -- This will be called after the plugin is loaded
    require("mini.icons").setup()
  end,
}
