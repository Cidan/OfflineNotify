local em = GetEventManager()

OFN = OFN or {}
OFN.name = "OfflineNotify"

function OFN.Initialize(event, addon)
  if addon ~= OFN.name then return end
  em:UnregisterForEvent("OfflineNotifyInitialize", EVENT_ADD_ON_LOADED)
  em:RegisterForEvent("OfflineNotifyStart", EVENT_PLAYER_ACTIVATED, function(...) OFN.Start(...) end)
end

function OFN.Start()
  d("test")
end

em:RegisterForEvent("OfflineNotifyInitialize", EVENT_ADD_ON_LOADED, function (...) OFN.Initialize(...) end)