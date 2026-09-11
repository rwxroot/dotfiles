return {
  "navarasu/onedark.nvim",
  priority = 1000,
  lazy = false,

  config = function()
    require("onedark").setup({
      style = "warmer",

      highlights = {
        Normal = { bg = "#1D1D20" },
        NormalNC = { bg = "#1D1D20" },
        SignColumn = { bg = "#1D1D20" },
        EndOfBuffer = { bg = "#1D1D20" },
      },
    })

    require("onedark").load()
  end,
}
