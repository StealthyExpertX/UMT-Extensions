--name=MobEvent Descriptions
--version=1.0
--description=Describes tags in the mobevents file.
--author=StealthyX
--editions=BEDROCK

MobEventDescriptions = {}

function MobEventDescriptions:main(root, context)
    if ((context.type or FILE_TYPE.GENERIC) ~= 0) then
        if (context.edition == EDITION.BEDROCK) then
            MobEventDescriptions:Bedrock(root)
        end
    end
end

function MobEventDescriptions:Bedrock(root)

    if (root:contains("events_enabled", TYPE.BYTE)) then
        local eventsEnabled = root.lastFound

        if (eventsEnabled.value == 0) then
            Style:setLabel(eventsEnabled, "MobEvents are disabled")
            Style:setLabelColor(eventsEnabled, "red")
        elseif (eventsEnabled.value == 1) then
            Style:setLabel(eventsEnabled, "MobEvents are enabled")
            Style:setLabelColor(eventsEnabled, "lime")
        elseif ((eventsEnabled.value ~= 0) and (eventsEnabled.value ~= 1)) then
            Style:setLabel(eventsEnabled, "Value is invalid")
            Style:setLabelColor(eventsEnabled, "yellow")
        end
    end

    if (root:contains("minecraft:pillager_patrols_event", TYPE.BYTE)) then
        local pillagerPatrolsEvent = root.lastFound

        if (pillagerPatrolsEvent.value == 0) then
            Style:setLabel(pillagerPatrolsEvent, "Pillager raids are disabled")
            Style:setLabelColor(pillagerPatrolsEvent, "red")
        elseif (pillagerPatrolsEvent.value == 1) then
            Style:setLabel(pillagerPatrolsEvent, "Pillager raids are enabled")
            Style:setLabelColor(pillagerPatrolsEvent, "lime")
        elseif ((pillagerPatrolsEvent.value ~= 0) and (pillagerPatrolsEvent.value ~= 1)) then
            Style:setLabel(pillagerPatrolsEvent, "Value is invalid!")
            Style:setLabelColor(pillagerPatrolsEvent, "yellow")
        end
    end

    if (root:contains("minecraft:wandering_trader_event", TYPE.BYTE)) then
        local wanderingTraderEvent = root.lastFound

        if (wanderingTraderEvent.value == 0) then
            Style:setLabel(wanderingTraderEvent, "Wandering traders are disabled")
            Style:setLabelColor(wanderingTraderEvent, "red")
        elseif (wanderingTraderEvent.value == 1) then
            Style:setLabel(wanderingTraderEvent, "Wandering traders are enabled")
            Style:setLabelColor(wanderingTraderEvent, "lime")
        elseif ((wanderingTraderEvent.value ~= 0) and (wanderingTraderEvent.value ~= 1)) then
            Style:setLabel(wanderingTraderEvent, "Value is invalid!")
            Style:setLabelColor(wanderingTraderEvent, "yellow")
        end
    end

    if (root:contains("minecraft:ender_dragon_event", TYPE.BYTE)) then
        local enderDragonEvent = root.lastFound

        if (enderDragonEvent.value == 0) then
            Style:setLabel(enderDragonEvent, "Ender Dragon respawning is disabled")
            Style:setLabelColor(enderDragonEvent, "red")
        elseif (enderDragonEvent.value == 1) then
            Style:setLabel(enderDragonEvent, "Ender Dragon respawning is enabled")
            Style:setLabelColor(enderDragonEvent, "lime")
        elseif ((enderDragonEvent.value ~= 0) and (enderDragonEvent.value ~= 1)) then
            Style:setLabel(enderDragonEvent, "Value is invalid!")
            Style:setLabelColor(enderDragonEvent, "yellow")
        end
    end
end

MobEventDescriptions.images = {
    Hunger = "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAJBAMAAAASvxsjAAAAIVBMVEUAAAAAAADUKiq4hFidbUN7US1hPBuyGBj/99zi1arfsY9cOXdXAAAAAXRSTlMAQObYZgAAAC5JREFUCNdjYBBkAAJGdQEgKbTIEEiKKzsDOYypLiAhsVAQySg4EUQxSABJkA4AbPMD3QREz4kAAAAASUVORK5CYII"
}

return MobEventDescriptions
