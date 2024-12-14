return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("bufferline").setup({
			options = {
				mode = "tabs",
				buffer_close_icon = "✗",
				close_icon = "",
				modified_icon = "●",
				left_trunc_marker = "",
				right_trunc_marker = "",
				max_name_length = 30,
				max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
				tb_size = 21,
				color_icons = true,
				show_buffer_icons = true,
				show_buffer_close_icons = true,
				show_close_icon = true,
				icon_pinned = "󰐃",
				minimum_padding = 1,
				maximum_padding = 5,
				maximum_length = 15,
				separator_style = { "│", "│" },
				enforce_regular_tabs = true,
			},
			highlights = {
				separator = {
					fg = "#434C5E",
				},
				buffer_selected = {
					bold = true,
					italic = false,
				},
				-- separator_selected = {},
				-- tab_selected = {},
				-- background = {},
				-- indicator_selected = {},
				fill = {
					bg = "#232A2E",
				},
			},
		})
		-- Keymaps
		local keymap = vim.keymap
		local opts = { noremap = true, silent = true, desc = "Go to Buffer" }
		keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "[t]ab [o]pen new" })
		keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>", { desc = "[t]ab [c]lose current" })
		keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "[t]ab [n]ext" })
		keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "[t]ab [p]revious" })
		keymap.set("n", "<leader>tb", "<cmd>tabnew %<CR>", { desc = "[t]ab [b]buffer" })
		keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
		keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
		keymap.set("n", "<leader>1", "<cmd>lua require('bufferline').go_to_buffer(1)<CR>", opts)
		keymap.set("n", "<leader>2", "<cmd>lua require('bufferline').go_to_buffer(2)<CR>", opts)
		keymap.set("n", "<leader>3", "<cmd>lua require('bufferline').go_to_buffer(3)<CR>", opts)
	end,
}
