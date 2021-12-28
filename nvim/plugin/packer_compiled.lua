-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/kyle/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/kyle/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/kyle/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/kyle/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/kyle/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ale = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/ale"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/bufferline.nvim"
  },
  ["committia.vim"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/committia.vim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15statusline\frequire\0" },
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/goyo.vim"
  },
  indentLine = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  loupe = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/loupe"
  },
  ["material.vim"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/material.vim"
  },
  neoformat = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/neoformat"
  },
  neoterm = {
    config = { "\27LJ\2\n1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\18syntax enable\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/neoterm"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17nvim_comment\frequire\0" },
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nH\0\0\3\0\4\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rocamllsp\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["space-nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\6\0\0156\0\0\0'\2\1\0B\0\2\0027\0\1\0006\0\0\0'\2\2\0B\0\2\0026\2\1\0009\2\3\0026\3\1\0009\3\4\0036\4\1\0009\4\5\4B\0\4\1K\0\1\0\25terminal_ansi_colors\21highlight_groups\27highlight_group_normal\15space-nvim\tvoid\frequire\0" },
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/space-nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\n\0\22\0\0286\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\t\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\n\0035\4\19\0005\5\17\0005\6\15\0005\a\r\0009\b\v\0009\t\f\0 \b\t\b=\b\14\a=\a\16\6=\6\18\5=\5\20\4=\4\21\3B\1\2\1K\0\1\0\fpickers\fbuffers\1\0\0\rmappings\1\0\0\6i\1\0\0\n<c-q>\1\0\0\16move_to_top\18delete_buffer\rdefaults\1\0\0\17path_display\1\2\0\0\nsmart\18layout_config\1\0\1\20layout_strategy\16bottom_pane\1\0\1\20prompt_position\vbottom\nsetup\14telescope\22telescope.actions\frequire\0" },
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  ["vim-fish"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/vim-fish"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-glsl"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/vim-glsl"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/vim-go"
  },
  ["vim-godot"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/vim-godot"
  },
  ["vim-jsdoc"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/vim-jsdoc"
  },
  ["vim-jsx-pretty"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty"
  },
  ["vim-less"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/vim-less"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/vim-prettier"
  },
  ["vim-rainbow"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/vim-rainbow"
  },
  ["vim-reason-plus"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/vim-reason-plus"
  },
  ["vim-reasonml"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/vim-reasonml"
  },
  ["vim-solidity"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/vim-solidity"
  },
  ["vim-stylus"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/vim-stylus"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/vim-test"
  },
  ["vim-toml"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/vim-toml"
  },
  ["yajs.vim"] = {
    loaded = true,
    path = "/Users/kyle/.local/share/nvim/site/pack/packer/start/yajs.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: space-nvim
time([[Config for space-nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\6\0\0156\0\0\0'\2\1\0B\0\2\0027\0\1\0006\0\0\0'\2\2\0B\0\2\0026\2\1\0009\2\3\0026\3\1\0009\3\4\0036\4\1\0009\4\5\4B\0\4\1K\0\1\0\25terminal_ansi_colors\21highlight_groups\27highlight_group_normal\15space-nvim\tvoid\frequire\0", "config", "space-nvim")
time([[Config for space-nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\n\0\22\0\0286\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\t\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\n\0035\4\19\0005\5\17\0005\6\15\0005\a\r\0009\b\v\0009\t\f\0 \b\t\b=\b\14\a=\a\16\6=\6\18\5=\5\20\4=\4\21\3B\1\2\1K\0\1\0\fpickers\fbuffers\1\0\0\rmappings\1\0\0\6i\1\0\0\n<c-q>\1\0\0\16move_to_top\18delete_buffer\rdefaults\1\0\0\17path_display\1\2\0\0\nsmart\18layout_config\1\0\1\20layout_strategy\16bottom_pane\1\0\1\20prompt_position\vbottom\nsetup\14telescope\22telescope.actions\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15statusline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nH\0\0\3\0\4\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rocamllsp\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: neoterm
time([[Config for neoterm]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\18syntax enable\bcmd\bvim\0", "config", "neoterm")
time([[Config for neoterm]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
