-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local opt = {
    noremap = true,
    silent = true,
}

-- Select All
vim.keymap.set("n", "<leader>a", "ggVG", opt)

-- Start and end of line
vim.keymap.set("n", "H", "^", opt) -- Move to the beginning of the line
vim.keymap.set("n", "L", "$", opt) -- Move to the end of the line
vim.keymap.set("v", "H", "^", opt) -- Move to the beginning of the line
vim.keymap.set("v", "L", "$", opt) -- Move to the end of the line

-- Move between buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", opt) -- Next buffer
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opt) -- Previous buffer

-- zz scrolls to 35%
vim.keymap.set("n", "zz", function()
    local win_height = vim.api.nvim_win_get_height(0) -- Get current window height
    local offset = math.floor(win_height * 0.35) -- Calculate 35% of the height
    local current_line = vim.fn.line(".") -- Get the current cursor line
    local target_line = current_line - offset -- Move to the target line
    vim.fn.winrestview({ topline = target_line }) -- Scroll to the target line
end, opt)

-- Alt movement instead of Ctrl
vim.keymap.set("n", "<M-j>", "<C-w>j", opt)
vim.keymap.set("n", "<M-k>", "<C-w>k", opt)
vim.keymap.set("n", "<M-h>", "<C-w>h", opt)
vim.keymap.set("n", "<M-l>", "<C-w>l", opt)
