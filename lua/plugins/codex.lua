return {
  'kkrampis/codex.nvim',
  lazy = true,
  cmd = { 'Codex', 'CodexToggle' }, -- Optional: Load only on command execution
  keys = {
    {
      '<leader>cc', -- Change this to your preferred keybinding
      function() require('codex').toggle() end,
      desc = 'Toggle Codex popup or side-panel',
      mode = { 'n'}
    },
  },
  opts = {
    keymaps     = {
      toggle = nil, -- Keybind to toggle Codex window (Disabled by default, watch out for conflicts)
      quit = '<C-q>', -- Keybind to close the Codex window (default: Ctrl + q)
    },         -- Disable internal default keymap (<leader>cc -> :CodexToggle)
    border      = 'rounded',  -- Options: 'single', 'double', or 'rounded'
    width       = 0.3,        -- Width of the floating window (0.0 to 1.0)
    height      = 0.8,        -- Height of the floating window (0.0 to 1.0)
    model       = nil,        -- Optional: pass a string to use a specific model (e.g., 'o3-mini')
    autoinstall = true,       -- Automatically install the Codex CLI if not found
    panel       = true,      -- Open Codex in a side-panel (vertical split) instead of floating window
    use_buffer  = false,      -- Capture Codex stdout into a normal buffer instead of a terminal buffer
  },
    config = function(_, opts)
        require('codex').setup(opts)

        vim.api.nvim_create_autocmd("TermOpen", {
            callback = function(args)
                local name = vim.api.nvim_buf_get_name(args.buf):lower()

                if not name:find("codex", 1, true) then
                    return
                end

                vim.keymap.set("t", "<C-c>", [[<C-\><C-n>]], {
                    buffer = args.buf,
                    silent = true,
                    desc = "Exit Codex terminal mode",
                })

                vim.keymap.set("t", "<Esc><Esc>", [[<C-\><C-n>]], {
                    buffer = args.buf,
                    silent = true,
                    desc = "Exit Codex terminal mode",
                })
            end,
        })
    end,
}
