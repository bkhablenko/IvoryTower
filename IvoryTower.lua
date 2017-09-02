local _, IvoryTower = ...

IvoryTower.GetWatchBarCount = function ()
    local result = 0
    for _, frame in pairs({ArtifactWatchBar, HonorWatchBar, ReputationWatchBar}) do
        result = result + (frame:IsShown() and 1 or 0)
    end
    return result
end

LoadAddOn("Blizzard_TalkingHeadUI")
