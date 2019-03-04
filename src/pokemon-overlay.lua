-- Bengineering Pokemon overlay script
package.path  = _G.script_path() .. [[../lib/lua/?.lua;]] .. package.path
package.cpath = _G.script_path() .. [[../lib/?.dll;]] .. package.cpath

local obs = _G.obslua

function _G.script_description()
  return "Automates Ben's Pokémon overlay by connecting with Google Docs.\n\nWritten by DarkMorford"
end

function _G.script_properties()
  local props = obs.obs_properties_create()

  obs.obs_properties_add_text(props, "api_key", "Google API Key", obs.OBS_TEXT_PASSWORD)
  obs.obs_properties_add_text(props, "spreadsheet", "Google Spreadsheet", obs.OBS_TEXT_DEFAULT)
  obs.obs_properties_add_int(props, "refresh", "Refresh Interval (seconds)", 1, 60, 1)

  return props
end

function _G.script_defaults(settings)
  obs.obs_data_set_default_string(settings, "spreadsheet", "1SvOZFM3yPPdQ00bFIK9Og4CwucKHjsFzwKRcRnF-vVg")
  obs.obs_data_set_default_int(settings, "refresh", 5)
end

function _G.script_update(settings)
end

function _G.script_load(settings)
end

function _G.script_unload()
end
