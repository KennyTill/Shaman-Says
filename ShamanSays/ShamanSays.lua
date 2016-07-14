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

is_casting = false
SpellTrackerFunctions = { }

SpellTracker = CreateFrame("Frame", nil, UIParent)
SpellTracker:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
SpellTracker:RegisterEvent("UNIT_SPELLCAST_INTERRUPTED")
SpellTracker:RegisterEvent("UNIT_SPELLCAST_FAILED")
SpellTracker:RegisterEvent("UNIT_SPELLCAST_START")
SpellTracker:SetScript("OnEvent", function (_,e) SpellTrackerFunctions[e]() end)

----
function SpellTrackerFunctions.UNIT_SPELLCAST_SUCCEEDED(...)
    local unitID, spell, rank, lineID, spellID = select(1, ...)
    if not is_casting then
        print("instant cast spell")
    end
    is_casting = false
end
----
function SpellTrackerFunctions.UNIT_SPELLCAST_START()
    is_casting = true
end
----
function SpellTrackerFunctions.UNIT_SPELLCAST_FAILED()
    is_casting = false
end


