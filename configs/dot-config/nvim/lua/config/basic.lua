vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set shiftwidth=2")
vim.cmd("set softtabstop=2")
vim.cmd("set tabstop=2")
vim.cmd("set scrolloff=8")
vim.cmd("set smarttab")
vim.cmd("set expandtab")
vim.cmd("set nowrap")
vim.cmd("set hlsearch")
vim.cmd("set incsearch")
vim.cmd("set showcmd")
vim.cmd("set showmatch")
vim.cmd("set history=100")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", '"_dp')

vim.keymap.set("n", "<esc>", ":noh<CR>")
vim.keymap.set("n", "<leader>sr", ":%s/")

vim.wo.number = true
vim.opt.showmode = false
vim.opt.cmdheight = 0

vim.cmd([[ autocmd RecordingEnter * set cmdheight=1 ]])
vim.cmd([[ autocmd RecordingLeave * set cmdheight=0 ]])

vim.diagnostic.config({
  signs = true,
  unerline = true,
  upate_in_insert = true,
  virtual_text = {
    prefix = "■",
  },
})
