-- Bengineering Pokemon overlay script
local obs = _G.obslua

function _G.script_description()
  return "Uses Google Docs to automate the Pokemon overlay\n\nWritten by DarkMorford"
end

function _G.script_properties()
  local props = obs.obs_properties_create()

  obs.obs_properties_add_text(props, "sheet_id", "Google Sheets ID", obs.OBS_TEXT_DEFAULT)

  return props
end

function _G.script_defaults(settings)
end

function _G.script_update(settings)
end
