--
-- Created by IntelliJ IDEA.
-- User: semiceri
-- Date: 7/13/2016
-- Time: 1:36 PM
--

--function that should be swapped out
local print = function (msg)
    DEFAULT_CHAT_FRAME:AddMessage(msg)
end

local frame = CreateFrame("FRAME", "ShammyFrame");
frame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")

local function spellcastSuccededEvent(self, event, ...)
    local unitID, spell, rank, lineID, spellID = ...;
    print(spell)
end

frame:SetScript("OnEvent", spellcastSuccededEvent)
