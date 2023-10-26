local wezterm = require 'wezterm'
local project = require 'project'

local config = {}
-- Use config_builder if available
if wezterm.config_builder then config = wezterm.config_builder() end

wezterm.on("gui-startup", function()
  project.startup("WZ_PROJECT", "projects", wezterm)
end)

-- GPU
config.front_end = 'WebGpu'
config.webgpu_power_preference = 'HighPerformance'
config.animation_fps = 10

-- Colors & Appearance
config.color_scheme = 'Tokyo Night'
config.window_background_opacity = 0.9
config.font = wezterm.font_with_fallback({
  { family = "IosevkaTerm Nerd Font", scale = 1.1}
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
  { key = 'p', mods = 'CTRL|SHIFT', action = wezterm.action.ActivateCommandPalette },
  { key = 'l', mods = 'CTRL|SHIFT', action = wezterm.action.ShowDebugOverlay },
  -- Copy/Paste
  { key = 'c', mods = 'CTRL|SHIFT', action = wezterm.action.CopyTo 'Clipboard' },
  { key = 'v', mods = 'CTRL|SHIFT', action = wezterm.action.PasteFrom 'Clipboard' },
  -- Split
  { key = 'h', mods = 'CTRL|SHIFT|ALT', action = wezterm.action({ SplitHorizontal = {domain="CurrentPaneDomain"} })},
  { key = 'v', mods = 'CTRL|SHIFT|ALT', action = wezterm.action({ SplitVertical = {domain="CurrentPaneDomain"} })},
  { key = 'UpArrow', mods = 'CTRL|SHIFT', action = wezterm.action. ActivatePaneDirection 'Up' },
  { key = "DownArrow", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection="Down" })},
  { key = "LeftArrow", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection="Left" })},
  { key = "RightArrow", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection="Right" })},
  { key = 'z', mods = 'CTRL|SHIFT', action = wezterm.action.TogglePaneZoomState },
  -- Tabs
  { key = 't', mods = "CTRL", action = wezterm.action({ SpawnTab = "CurrentPaneDomain"} )},
  { key = "Tab", mods = "CTRL", action = wezterm.action({ ActivateTabRelative = 1 } )},
  { key = "Tab", mods = "CTRL|SHIFT", action = wezterm.action({ ActivateTabRelative = -1 } )},
}

-- Misc
config.check_for_updates = false

return config
