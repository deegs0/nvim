function ColorMyPencils(color)
	--color = color or "rose-pine-moon"
	--vim.cmd.colorscheme(color)
    vim.cmd.colorscheme('base-16-gruvbox-material-dark-soft')

	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end


return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                --disable_background = true,
                styles = {
                    italic = false,
                },
            })

        end
    },
    {
        "tinted-theming/tinted-vim",
        config = function()
            vim.cmd.colorscheme('base16-gruvbox-material-dark-soft')
        end,
    }
}
