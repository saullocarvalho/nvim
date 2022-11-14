local keymap = require("n0ps13d.keymap")

local nnoremap = keymap.nnoremap
local inoremap = keymap.inoremap

-- normal mode
--
-- go to current directory buffer
nnoremap("<leader>pv", "<cmd>Ex<cr>")

-- edit and source nvim config file
nnoremap("<leader>ev", "<cmd>vsplit ~/.config/nvim/ <cr>")
nnoremap("<leader>sv", "<cmd>source ~/.config/nvim/init.lua<cr>")

-- execute python3 scripts
nnoremap("<leader>ps", "<cmd>w<cr><cmd>!python3 % <cr>")

-- execute go code
nnoremap("<leader>pg", "<cmd>w<cr><cmd>!go run . <cr>")

-- beautify json files
nnoremap("<leader>js", "<cmd>%!python3 -m json.tool <cr>")

-- move between tabs
nnoremap("<C-p>", "<cmd>tabprevious<cr>")
nnoremap("<C-n>", "<cmd>tabnext<cr>")


-- insert mode
inoremap("jk", "<ESC>")
