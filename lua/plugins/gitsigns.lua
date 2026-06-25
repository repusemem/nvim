return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    current_line_blame = false,

    on_attach = function(bufnr)
      local gitsigns = require("gitsigns")
      local map = vim.keymap.set

      map("n", "]c", gitsigns.next_hunk, { buffer = bufnr, desc = "Next git hunk" })
      map("n", "[c", gitsigns.prev_hunk, { buffer = bufnr, desc = "Previous git hunk" })

      map("n", "<leader>hs", gitsigns.stage_hunk, { buffer = bufnr, desc = "Stage hunk" })
      map("n", "<leader>hr", gitsigns.reset_hunk, { buffer = bufnr, desc = "Reset hunk" })
      map("n", "<leader>hp", gitsigns.preview_hunk, { buffer = bufnr, desc = "Preview hunk" })
      map("n", "<leader>hb", gitsigns.blame_line, { buffer = bufnr, desc = "Blame line" })
    end,
  },
}
