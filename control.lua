---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 4/17/2025 11:43 PM
---

handler = require("event_handler")
handler.add_lib(require("repair_ship"))
local ShipRepair = require('repair_ship')

script.on_event(defines.events.on_entity_damaged,
        function(event)
            ShipRepair.add_to_repair_list(event)
        end,
    {
        {filter="turret", mode = "or"},
        {filter="crafting-machine", mode = "or"},
        {filter="transport-belt-connectable", mode = "or"},
        {filter = "type", type = "unit", mode="or"},
        {filter = "type", type = "inserter", mode="or"},
        {filter = "type", type = "asteroid-collector", mode="or"},
    }
)

local RemoteApi = require("remote_api")
remote.add_interface("advanced_spaceship_repair", RemoteApi)