local _, IvoryTower = ...

local results = {}
function AchievementFrame_GetCategoryNumAchievements_CharacterIncomplete(categoryID)
    if (not results[categoryID]) then
        local incomplete, total = 0, GetCategoryNumAchievements(categoryID)
        for i = 1, total do
            local _, _, _, completed, _, _, _, _, _, _, _, _, wasEarnedByMe = GetAchievementInfo(categoryID, i)
            if ((completed and not wasEarnedByMe) or not completed) then
                incomplete = incomplete + 1
            end
        end
        results[categoryID] = {incomplete, 0, total - incomplete}
    end
    return unpack(results[categoryID])
end

local frame = CreateFrame("Frame", "IvoryTower_AchievementFrame", UIParent)
frame:RegisterEvent("ACHIEVEMENT_EARNED")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", function(self, event, arg1, ...)
    if (event == "ACHIEVEMENT_EARNED") then
        categoryID = GetAchievementCategory(arg1)
        IvoryTower:Debug("Achievement earned: |cffffffff" .. arg1)
        results[categoryID] = nil
        return
    end
    if (event == "ADDON_LOADED" and arg1 == "Blizzard_AchievementUI") then
        table.insert(AchievementFrameFilters, {text = "Character Incomplete", func = AchievementFrame_GetCategoryNumAchievements_CharacterIncomplete})
        table.insert(AchievementFrameFilterStrings, "Show achievements not completed by this character")
    end
end)
