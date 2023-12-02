local M = {}

-- Toggle full screen when using Neovide
function M.full_screen_toggle_neovide()
    if vim.g.neovide then
        if vim.g.neovide_fullscreen then
            vim.g.neovide_fullscreen = false
        else
            vim.g.neovide_fullscreen = true
        end
    end
end

return M
