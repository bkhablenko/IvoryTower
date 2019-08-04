-- /run MoneyWonAlertSystem:AddAlert(815)

-- hooksecurefunc("UIParent_ManageFramePositions", function ()
--     if (InCombatLockdown()) then
--         return
--     end

--     local yOffset = -12

--     for _, actionBar in pairs({MultiBarBottomLeft, MultiBarBottomRight}) do
--         yOffset = yOffset + (actionBar:IsShown() and (actionBar:GetHeight() + 4) or 0)
--     end

--     if (PetActionBarFrame:IsShown()) then
--         yOffset = yOffset + PetActionBarFrame:GetHeight()
--     end

--     if (TalkingHeadFrame:IsShown()) then
--         yOffset = yOffset + TalkingHeadFrame:GetHeight()
--     end

--     AlertFrame:ClearAllPoints()
--     AlertFrame:SetPoint("BOTTOM", MainMenuBar, "TOP", 0, yOffset)
-- end)

AlertFrame:ClearAllPoints()
AlertFrame:SetPoint("BOTTOM", UIParent, "BOTTOM", 0, 150)
AlertFrame.SetPoint = function () end
