local keymap = vim.keymap

-- Removes highlighting
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
-- Split window horizontally
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "[w]indow [v]ertical" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "[w]indow [h]orizontal" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "[w]indow [e]qual size" })
keymap.set("n", "<leader>wc", ":close<CR>", { desc = "[w]indow [c]lose" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "[t]ab [o]pen new" })
keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>", { desc = "[t]ab [c]lose current" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "[t]ab [n]ext" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "[t]ab [p]revious" })
keymap.set("n", "<leader>tb", "<cmd>tabnew %<CR>", { desc = "[t]ab [b]buffer - Copy buffer to new tab " })

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
