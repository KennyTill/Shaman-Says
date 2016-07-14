--
-- Created by IntelliJ IDEA.
-- User: semiceri
-- Date: 7/13/2016
-- Time: 1:36 PM
--

--function that should be swapped out
local print = function(msg)
    DEFAULT_CHAT_FRAME:AddMessage(msg)
end

isCasting = false
SpellTrackerFunctions = { }

--event registration
SpellTracker = CreateFrame("Frame", nil, UIParent)
SpellTracker:RegisterEvent("UNIT_SPELLCAST_SUCCEDED")
SpellTracker:RegisterEvent("UNIT_SPELLCAST_INTERRUPTED")
SpellTracker:RegisterEvent("UNIT_SPELLCAST_FAILED")
SpellTracker:RegisterEvent("UNIT_SPELLCAST_START")
SpellTracker:SetScript("OnEvent", function(_,e) SpellTrackerFunctions[e] () end)

function SpellTrackerFunctions.UNIT_SPELLCAST_SUCCEDED()
    if not is_casting then
        --figure out how to get spell name here
        print()
    end

end


