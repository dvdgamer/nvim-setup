-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/david/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/david/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/david/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/david/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/david/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
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
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/david/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/david/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/david/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["codam-header.nvim"] = {
    commands = { "Stdheader" },
    config = { "\27LJ\2\2�\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\1B\0\2\1K\0\1\0\bgit\1\0\4\16user_global\2\fenabled\1\bbin\bgit\17email_global\2\1\0\4\17exascii_left\1\16auto_update\2\tuser\vdponte\tmail\28dponte@student.codam.nl\nsetup\16codamheader\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/david/.local/share/nvim/site/pack/packer/opt/codam-header.nvim",
    url = "https://github.com/BeerB34r/codam-header.nvim"
  },
  ["monokai.nvim"] = {
    config = { "\27LJ\2\2�\1\0\0\4\0\n\0\0176\0\0\0006\1\1\0009\1\2\1'\2\3\0B\0\3\0016\0\4\0'\1\5\0B\0\2\0029\0\6\0005\1\b\0006\2\4\0'\3\5\0B\2\2\0029\2\a\2=\2\t\1B\0\2\1K\0\1\0\fpalette\1\0\0\bpro\nsetup\fmonokai\frequire\24colorscheme monokai\bcmd\bvim\npcall\0" },
    loaded = true,
    path = "/home/david/.local/share/nvim/site/pack/packer/start/monokai.nvim",
    url = "https://github.com/tanvirtin/monokai.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/david/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\2�\2\0\0\a\0\17\0\0306\0\0\0'\1\1\0B\0\2\0029\1\2\0005\2\6\0004\3\4\0005\4\3\0>\4\1\0035\4\4\0>\4\2\0035\4\5\0>\4\3\3=\3\a\0029\3\b\0009\3\t\0039\3\n\0035\4\f\0009\5\b\0009\5\v\5B\5\1\2=\5\r\0049\5\b\0009\5\14\0055\6\15\0B\5\2\2=\5\16\4B\3\2\2=\3\b\2B\1\2\1K\0\1\0\t<CR>\1\0\1\vselect\2\fconfirm\14<C-Space>\1\0\0\rcomplete\vinsert\vpreset\fmapping\fsources\1\0\0\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/home/david/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\2\v\0\2\2\0\0\0\1K\0\1\0�\1\1\0\6\0\n\0\0166\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\1B\2\1\0029\3\4\0009\3\5\0035\4\6\0=\2\a\0043\5\b\0=\5\t\4B\3\2\1K\0\1\0\14on_attach\0\17capabilities\1\0\0\nsetup\fpyright\25default_capabilities\17cmp_nvim_lsp\14lspconfig\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/david/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-lspconfig" },
    config = { "\27LJ\2\2�\2\0\0\3\0\f\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0=\2\t\0015\2\n\0=\2\v\1B\0\2\1K\0\1\0\21ensure_installed\1\f\0\0\6c\blua\vpython\15javascript\15typescript\thtml\bcss\tjson\rmarkdown\trust\bcpp\vindent\1\0\1\venable\2\26incremental_selection\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/home/david/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\2O\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/home/david/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/david/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/david/.local/share/nvim/site/pack/packer/opt/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\2�\1\0\0\a\0\r\0\0186\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\v\0005\2\t\0005\3\a\0005\4\5\0006\5\0\0'\6\3\0B\5\2\0029\5\4\5=\5\6\4=\4\b\3=\3\n\2=\2\f\1B\0\2\1K\0\1\0\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\n<Esc>\1\0\0\nclose\22telescope.actions\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/david/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/david/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^plenary"] = "plenary.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: monokai.nvim
time([[Config for monokai.nvim]], true)
try_loadstring("\27LJ\2\2�\1\0\0\4\0\n\0\0176\0\0\0006\1\1\0009\1\2\1'\2\3\0B\0\3\0016\0\4\0'\1\5\0B\0\2\0029\0\6\0005\1\b\0006\2\4\0'\3\5\0B\2\2\0029\2\a\2=\2\t\1B\0\2\1K\0\1\0\fpalette\1\0\0\bpro\nsetup\fmonokai\frequire\24colorscheme monokai\bcmd\bvim\npcall\0", "config", "monokai.nvim")
time([[Config for monokai.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\2�\1\0\0\a\0\r\0\0186\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\v\0005\2\t\0005\3\a\0005\4\5\0006\5\0\0'\6\3\0B\5\2\0029\5\4\5=\5\6\4=\4\b\3=\3\n\2=\2\f\1B\0\2\1K\0\1\0\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\n<Esc>\1\0\0\nclose\22telescope.actions\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\2�\2\0\0\a\0\17\0\0306\0\0\0'\1\1\0B\0\2\0029\1\2\0005\2\6\0004\3\4\0005\4\3\0>\4\1\0035\4\4\0>\4\2\0035\4\5\0>\4\3\3=\3\a\0029\3\b\0009\3\t\0039\3\n\0035\4\f\0009\5\b\0009\5\v\5B\5\1\2=\5\r\0049\5\b\0009\5\14\0055\6\15\0B\5\2\2=\5\16\4B\3\2\2=\3\b\2B\1\2\1K\0\1\0\t<CR>\1\0\1\vselect\2\fconfirm\14<C-Space>\1\0\0\rcomplete\vinsert\vpreset\fmapping\fsources\1\0\0\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\2O\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\2�\2\0\0\3\0\f\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0=\2\t\0015\2\n\0=\2\v\1B\0\2\1K\0\1\0\21ensure_installed\1\f\0\0\6c\blua\vpython\15javascript\15typescript\thtml\bcss\tjson\rmarkdown\trust\bcpp\vindent\1\0\1\venable\2\26incremental_selection\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-lspconfig ]]

-- Config for: nvim-lspconfig
try_loadstring("\27LJ\2\2\v\0\2\2\0\0\0\1K\0\1\0�\1\1\0\6\0\n\0\0166\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\1B\2\1\0029\3\4\0009\3\5\0035\4\6\0=\2\a\0043\5\b\0=\5\t\4B\3\2\1K\0\1\0\14on_attach\0\17capabilities\1\0\0\nsetup\fpyright\25default_capabilities\17cmp_nvim_lsp\14lspconfig\frequire\0", "config", "nvim-lspconfig")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'Stdheader', function(cmdargs)
          require('packer.load')({'codam-header.nvim'}, { cmd = 'Stdheader', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'codam-header.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Stdheader ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)


_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
