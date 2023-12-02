local utils = require("utils")

vim.g.mapleader = " "

local mappings = {
    -- Basic
    { from = "jk",         to = "<Esc>",                         mode = "i" },
    { from = "v",          to = "<Esc>",                         mode = "v" },
    { from = "j",          to = [[v:count ? 'j' : 'gj']],        option = { noremap = true, expr = true } },
    { from = "k",          to = [[v:count ? 'k' : 'gk']],        option = { noremap = true, expr = true } },
    { from = "J",          to = "5j",                            mode = { "n", "v" } },
    { from = "K",          to = "5k",                            mode = { "n", "v" } },
    { from = "zb",         to = "%",                             mode = { "n", "v" } },
    { from = "zh",         to = "^",                             mode = { "n", "v" } },
    { from = "zl",         to = "g_",                            mode = { "n", "v" } },
    { from = "<leader>n",  to = ":enew<CR>", },

    -- Better indenting
    { from = "<",          to = "<gv",                           mode = "v" },
    { from = ">",          to = ">gv",                           mode = "v" },

    -- Switch buffer
    { from = "H",          to = ":bprev<CR>" },
    { from = "L",          to = ":bnext<CR>" },

    -- Save or quit Neovim
    { from = "<leader>wq", to = ":wq<CR>" },
    { from = "<leader>w",  to = ":w<CR>" },
    { from = "<leader>q",  to = ":q!<CR>" },
    -- { from = "<leader>qa", to = ":qa!<CR>" },

    -- Clear highlight
    { from = "<leader>nh",  to = ":nohl<CR>" },

    -- Close buffer
    { from = "<leader>c",  to = ":bd<CR>" },

    -- Split windows
    { from = "<leader>zv", to = "<C-w>v" },
    { from = "<leader>zh", to = "<C-w>s" },
    { from = "<leader>ze", to = "<C-w>=" },  -- make split windows equal width && height
    { from = "<leader>zx", to = ":close<CR>" },  -- close current split window

    { from = "<leader>to", to = "<cmd>tabnew<CR>" },
    { from = "<leader>tx", to = "<cmd>tabclose<CR>" },
    { from = "<leader>tn", to = "<cmd>tabn<CR>" },
    { from = "<leader>tp", to = "<cmd>tabp<CR>" },
    { from = "<leader>tf", to = "<cmd>tabnew %<CR>" },

    -- Move focus
    { from = "<C-h>",      to = "<C-w>h" },
    { from = "<C-j>",      to = "<C-w>j" },
    { from = "<C-k>",      to = "<C-w>k" },
    { from = "<C-l>",      to = "<C-w>l" },

    -- Resize window
    { from = "<C-Left>",   to = "<C-w>>" },
    { from = "<C-Right>",  to = "<C-w><" },
    { from = "<C-Down>",   to = "<C-w>-" },
    { from = "<C-Up>",     to = "<C-w>+" },

    -- Move line
    { from = "<M-j>",      to = ":m+1<CR>" },
    { from = "<M-k>",      to = ":m-2<CR>" },
    { from = "<M-j>",      to = ":m '>+1<CR>gv=gv",              mode = "v" },
    { from = "<M-k>",      to = ":m '<-2<CR>gv=gv",              mode = "v" },

    -- Do not yank with x
    { from = "x",          to = '"_x' },

    -- Increment / decrement
    { from = "+",          to = "<C-a>" },
    { from = "-",          to = "<C-x>" },

    { from = "<leader>zm", to = ":MaximizerToggle<CR>" },

    -- Select all
    { from = "<C-a>",      to = "ggVG" },

    -- Lazy.nvim
    { from = "<leader>l",  to = ":Lazy<CR>" },

    -- Print console.log
    { from = "<C-M-l>",    to = "iconsole.log()<Esc>i" },
    { from = "<C-M-l>",    to = "console.log()<Esc>i",           mode = "i" },

    -- Toggle full screen when using Neovide
    { from = "<leader>u",  to = utils.full_screen_toggle_neovide }
}

local option = { noremap = true, silent = true }

for _, mapping in ipairs(mappings) do
    vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, mapping.option or option)
end
