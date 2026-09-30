local function onPlayerJoined(event)
    local playerid = event.eventobjid
    local _, name = Player:getNickname(playerid)

    Player:setPosition(playerid, 0, 7, 0)
    Chat:sendSystemMsg("System: Teleported to lobby", playerid)
end
ScriptSupportEvent:registerEvent("Game.AnyPlayer.EnterGame", onPlayerJoined)