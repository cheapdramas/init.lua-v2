vim.cmd([[let g:XkbSwitchLib = "/home/rostik/.local/usr/local/lib/libxkbswitch.so"]])
vim.cmd([[echo libcall(g:XkbSwitchLib, 'Xkb_Switch_getXkbLayout', '')]])
vim.cmd([[call libcall(g:XkbSwitchLib, 'Xkb_Switch_setXkbLayout', 'us')]])
vim.g.lualine_xkblayout_codes = {
  ["us"] = "ENG",
  ["ua"] = "UA",
  ["ru"] = "RU",
}
