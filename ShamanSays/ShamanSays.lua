--
-- Created by IntelliJ IDEA.
-- User: semiceri
-- Date: 7/13/2016
-- Time: 1:36 PM
--


ShamanSays = LibStub("AceAddon-3.0"):NewAddon("ShamanSays", "AceConsole-3.0", "AceEvent-3.0")

function ShamanSays:UNIT_SPELLCAST_SUCCEEDED(...)
    self:Print("spellcast event caught!")
    local unitID, spell, rank, lineID, spellID = ...;
    --Find abilities here
    if (spell == "Healing Surge") then
       self:Print(spell)
    end
end

function ShamanSays:HandleChatCommandFunc(input)
    --if branch to update stuff here
    self:Print("TODO: Add slash functionality")
end


function ShamanSays:OnInitialize()
    --registers for slash commands
    ShamanSays:RegisterChatCommand("shamansays", "HandleChatCommandFunc",true)
    --registers for events
    ShamanSays:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
end
