-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  -- n is for the normal mode.
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  -- t is for the terminal.
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  -- i for the insert mode.
  i = {
    ["<C-f>"] = { "<Right>", desc = "Move right" },
    ["<C-b>"] = { "<Left>", desc = "Move left" },
    ["<C-n>"] = { "<Down>", desc = "Move down" },
    ["<C-p>"] = { "<Up>", desc = "Move up" },
    ["<C-a>"] = { "<Esc>^i", desc = "Move to the firt character of the line" },
    ["<C-e>"] = { "<End>", desc = "Move to the end of the line" },
  },
  -- v for the visual
  v = {},
}
