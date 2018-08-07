local _, IvoryTower = ...

-- IvoryTower.GetWatchBarCount = function ()
--     local result = 0
--     for _, watchBar in pairs({ArtifactWatchBar, HonorWatchBar, ReputationWatchBar}) do
--         result = result + (watchBar:IsShown() and 1 or 0)
--     end
--     return result
-- end

-- LoadAddOn("Blizzard_TalkingHeadUI")

BINDING_HEADER_IVORYTOWER = "IvoryTower"
BINDING_NAME_IVORYTOWER_RELOADUI = "Reload UI"

SLASH_PRINT1 = "/print"
SlashCmdList["PRINT"] = function (script)
    script = string.format("print(%s)", script)
    RunScript(script)
end
