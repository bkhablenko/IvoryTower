local _, IvoryTower = ...

local DEBUG_ENABLED = true

function IvoryTower:Debug(...)
    if (DEBUG_ENABLED) then
        local message = string.format(...)
        print("|cfffffff0Ivory|cfff0e68cTower: " .. message .. "|r")
    end
end

SLASH_IVORYTOWER_PRINT1 = "/print"
SlashCmdList["IVORYTOWER_PRINT"] = function (script)
    script = string.format("print(%s)", script)
    RunScript(script)
end

SLASH_IVORYTOWER_QUEST1 = "/quest"
SlashCmdList["IVORYTOWER_QUEST"] = function (questID)
    status = C_QuestLog.IsQuestFlaggedCompleted(questID) and "|cff80ff80completed|r" or "|cffff8080incomplete|r"
    ChatFrame1:AddMessage(string.format("Quest %d is %s.", questID, status))
end
