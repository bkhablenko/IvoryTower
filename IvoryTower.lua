local _, IvoryTower = ...

-- IvoryTower.GetWatchBarCount = function ()
--     local result = 0
--     for _, watchBar in pairs({ArtifactWatchBar, HonorWatchBar, ReputationWatchBar}) do
--         result = result + (watchBar:IsShown() and 1 or 0)
--     end
--     return result
-- end

local DEBUG_ENABLED = true

function IvoryTower:Debug(message)
    if (DEBUG_ENABLED) then
        print("|cfffffff0Ivory|cfff0e68cTower: " .. message .. "|r")
    end
end

BINDING_HEADER_IVORYTOWER = "IvoryTower"
BINDING_NAME_IVORYTOWER_RELOADUI = "Reload UI"

SLASH_PRINT1 = "/print"
SlashCmdList["PRINT"] = function (script)
    script = string.format("print(%s)", script)
    RunScript(script)
end
