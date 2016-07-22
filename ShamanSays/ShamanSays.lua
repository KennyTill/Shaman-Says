--
-- Created by IntelliJ IDEA.
-- User: semiceri
-- Date: 7/13/2016
-- Time: 1:36 PM
--


ShamanSays = LibStub("AceAddon-3.0"):NewAddon("ShamanSays","AceConsole-3.0") -- ,"AceEvent-3.0")


--function ShamanSays:UNIT_SPELLCAST_SUCCEEDED()
    --DEFAULT_CHAT_FRAME:AddMessage("caught event!")
--    --self:Print(input)
--    self:Print("spellcast event caught!")
--    local unitID, spell, rank, lineID, spellID = input;
--    --Find abilities here
--    if (spell == "Healing Surge") then
--       self:Print(spell)
--    end
--end

function ShamanSays:HandleChatCommandFunc(input)
    --if branch to update stuff here
    self:Print("TODO: Add slash functionality")
end


function ShamanSays:OnInitialize()
    --registers for slash commands
    self:RegisterChatCommand("shs", "HandleChatCommandFunc",true)
    --registers for events
    DEFAULT_CHAT_FRAME:AddMessage("init!")
    --self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
end
