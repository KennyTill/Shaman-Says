--
-- Created by IntelliJ IDEA.
-- User: semiceri
-- Date: 7/13/2016
-- Time: 1:36 PM
--

--leaving these here could cause syncing issues

--TODO: update this function for say chat
local print = function (msg)
    DEFAULT_CHAT_FRAME:AddMessage(msg)
    --SendChatMessage(msg, "SAY")
end

local function spellcastSuccededEvent(self, event, ...)
    local unitID, spell, rank, lineID, spellID = ...;
    --Find abilities here
    if (spell == "Capacitor Totem") then
        -- import ace 3 and use it here for timer functionality
    end
end


--reserved for ui update polling
local function onUpdate(self, elapsed)

end


local shammyDummyFrame = CreateFrame("FRAME", "ShammyFrame");
shammyDummyFrame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")


--passthough function for all events
local function eventTriggered(self, event, ...)
    if event == "UNIT_SPELLCAST_SUCCEEDED" then
        spellcastSuccededEvent(self, event, ...)
    end
end

shammyDummyFrame:SetScript("OnEvent", eventTriggered)
shammyDummyFrame:SetScript("OnUpdate", onUpdate)
