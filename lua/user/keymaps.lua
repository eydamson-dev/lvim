-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["ss"] = ":w<cr>"
lvim.keys.normal_mode["<S-k>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-j>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<leader><leader>"] = ":nohlsearch<CR>"
lvim.lsp.buffer_mappings.normal_mode['K'] = ":BufferLineCycleNext<CR>"

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

-- Better saving
keymap("n", "ss", ":w<CR>", opts)
keymap("n", "<C-x>", ":BufferKill<CR>", opts)
keymap("n", "<C-q>", ":q<CR>", opts)
keymap("n", "<leader><leader>", ":nohlsearch<CR>", opts)
-- Insert mode --
-- Press jk fast to enter
keymap("i", "jj", "<ESC>", opts)
-- ESC then insert at the end
keymap("i", "jk", "<ESC>A", opts)
--Unhiglight search
