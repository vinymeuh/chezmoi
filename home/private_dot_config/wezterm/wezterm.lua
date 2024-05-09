local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = {}

-- Use config_builder if available
if wezterm.config_builder then config = wezterm.config_builder() end

-- Window size for newly created windows
config.initial_cols = 120
config.initial_rows = 24

-- GPU
config.front_end = 'WebGpu'
config.webgpu_power_preference = 'HighPerformance'
config.animation_fps = 10

-- Colors & Appearance
config.color_scheme = 'Gruvbox Dark (Gogh)'
config.window_background_opacity = 0.9
config.font_size = 11.0
config.font = wezterm.font_with_fallback({
  'JetBrains Mono',
})

-- Tab bar
config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.inactive_pane_hsb = {
  saturation = 0.5,
  brightness = 0.3,
}

-- Key Bindings
config.disable_default_key_bindings = true
config.keys = {
  -- Command Palette and DebugOverlay
  { key = 'p',   mods = 'CTRL|SHIFT', action = wezterm.action.ActivateCommandPalette },
  { key = 'l',   mods = 'CTRL|SHIFT', action = wezterm.action.ShowDebugOverlay },
  -- Copy/Paste
  { key = 'c',   mods = 'CTRL|SHIFT', action = wezterm.action.CopyTo 'Clipboard' },
  { key = 'v',   mods = 'CTRL|SHIFT', action = wezterm.action.PasteFrom 'Clipboard' },
  -- Tabs
  { key = 't',   mods = "CTRL|SHIFT", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
  { key = "Tab", mods = "CTRL|SHIFT", action = wezterm.action({ ActivateTabRelative = 1 }) },
  -- Window
  { key = "n",   mods = "CTRL|SHIFT", action = wezterm.action.SpawnWindow },
}

-- Misc
config.check_for_updates = false
config.warn_about_missing_glyphs = false

return config
