--
-- Created by IntelliJ IDEA.
-- User: semiceri
-- Date: 7/13/2016
-- Time: 1:36 PM
--

--leaving these here could cause syncing issues
local capTotemPlaced, capTotemTimer, capTotemCoundown = false, 0, 5


--TODO: update this function for say chat
local print = function (msg)
    DEFAULT_CHAT_FRAME:AddMessage(msg)
end

local function spellcastSuccededEvent(self, event, ...)
    local unitID, spell, rank, lineID, spellID = ...;
    --Find abilities here
    if (spell == "Capacitor Totem") then
        capTotemPlaced = true
    end
end


--I feel like this is a bad idea but lets do it anyway
local function onUpdate(self, elapsed)
    if capTotemPlaced then
        capTotemTimer = capTotemTimer + elapsed
        if capTotemTimer >= 1 then
            print(capTotemCoundown)
            capTotemCoundown = capTotemCoundown - 1
            capTotemTimer = 0
        end
        if capTotemCoundown <= 0 then
            capTotemPlaced = false
        end
    end
end

local frame = CreateFrame("FRAME", "ShammyFrame");
frame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")


--passthough function for all events
local function eventTriggered(self, event, ...)
    if event == "UNIT_SPELLCAST_SUCCEEDED" then
        spellcastSuccededEvent(self, event, ...)
    end
end

frame:SetScript("OnEvent", eventTriggered)

