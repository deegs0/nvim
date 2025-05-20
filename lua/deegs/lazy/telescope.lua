return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		dependencies = { 'nvim-lua/plenary.nvim', 'debugloop/telescope-undo.nvim' },
		config = function()
			require('telescope').setup({
				-- the rest of your telescope config goes here
				extensions = {
					undo = {
						-- telescope-undo.nvim config, see below
					},
					-- other extensions:
					-- file_browser = { ... }
				},
			})
			require('telescope').load_extension('undo')
			vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")


			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
			vim.keymap.set('n', '<C-p>', builtin.git_files, {})
			vim.keymap.set('n', '<leader>ps', function()
				builtin.grep_string({ search = vim.fn.input("Grep > ") })
			end)
		end
	},
}

