local options = {
    number = true,             -- Print line number
    relativenumber = true,     -- Relative line number
    clipboard = "unnamedplus", -- Sync with system clipboard
    shiftwidth = 4,            -- Size of an indent
    tabstop = 4,               -- Number of spaces tabs count for
    expandtab = true,          -- Use spaces instead of tabs
    smartindent = true,        -- Insert indents automatically
    cursorline = true,         -- Enable highlighting of the current line
    termguicolors = true,      -- True color support
    scrolloff = 10,            -- Lines of context
    signcolumn = "yes",        -- Always show the signcolumn, otherwise it would shift the text each time
    ignorecase = true,         -- Ignore case
    smartcase = true,          -- Don't ignore case with capitals
    showmode = false,          -- Don't show mode since we have a statusline
    mouse = "a",               -- Enable mouse mode
    splitbelow = true,         -- Put new windows below current
    splitright = true,         -- Put new windows right of current
    swapfile = false,          -- Disable swap file
    fillchars = { eob = " " },
    colorcolumn = "120",
}

for option, value in pairs(options) do
    vim.opt[option] = value
end

if vim.g.neovide then
    -- vim.o.guifont = "CaskaydiaCove Nerd Font Mono:h18"
    vim.o.guifont = "JetBrainsMono Nerd Font Mono:h18"
    vim.g.neovide_hide_mouse_when_typing = true
end
