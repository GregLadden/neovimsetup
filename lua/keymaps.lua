local keymap = vim.keymap

-- Highlight when yanking text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Removes highlighting
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
-- Split window horizontally
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "[w]indow [v]ertical" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "[w]indow [h]orizontal" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "[w]indow [e]qual size" })
keymap.set("n", "<leader>wc", ":close<CR>", { desc = "[w]indow [c]lose" })

-- Fold and unfold mappings
keymap.set("n", "<space>ft", "za", { noremap = true, desc = "[f]old [t]oggle line under cursor" }) -- Toggle fold under cursor
keymap.set("n", "<space>fo", "zR", { noremap = true, desc = "[f]old [o]pen all" }) -- Open all folds
keymap.set("n", "<space>fc", "zM", { noremap = true, desc = "[f]old [c]lose all" }) -- Close all folds
-- Toggle foldmethod between indent and manual
keymap.set(
	"n",
	"<leader>fs",
	":lua ToggleFoldmethod()<CR>",
	{ noremap = true, silent = true, desc = "[f]old [s]et Toggles set fold to manual or indent" }
)

function ToggleFoldmethod()
	if vim.o.foldmethod == "indent" then
		vim.o.foldmethod = "manual"
	else
		vim.o.foldmethod = "indent"
	end
end

-- Move lines up or down in visual mode
keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Shift visual selected line up
keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Shift visual selected line down
