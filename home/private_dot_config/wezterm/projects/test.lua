local function startup(wezterm)
  local mux = wezterm.mux
  local project_dir = wezterm.home_dir .. '/Work4Me'

  local tab, pane, window = mux.spawn_window {
    cwd = project_dir
  }

  local top_pane = pane:split {
    direction = 'Right',
    cwd = project_dir,
  }
  top_pane:send_text 'top\n'
  
  
end

return {
  startup = startup
}
