local _, IvoryTower = ...

-- hooksecurefunc("UIParent_ManageFramePositions", function ()
--     local yOffset = 0

--     for _, actionBar in pairs({MultiBarBottomLeft, MultiBarBottomRight}) do
--         yOffset = yOffset + (actionBar:IsShown() and (actionBar:GetHeight() + 4) or 0)
--     end

--     if (PetActionBarFrame:IsShown()) then
--         yOffset = yOffset + PetActionBarFrame:GetHeight()
--     end

--     TalkingHeadFrame:ClearAllPoints()
--     TalkingHeadFrame:SetPoint("BOTTOM", MainMenuBar, "TOP", 0, yOffset)
-- end)
