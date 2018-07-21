-- local function HidePetActionBarTextures()
--     for i = 0, 1 do
--         local texture = _G["SlidingActionBarTexture" .. i]
--         texture:Hide()
--         texture.Show = function () end
--     end
-- end
-- HidePetActionBarTextures()

-- UIPARENT_MANAGED_FRAME_POSITIONS["PETACTIONBAR_YPOS"] = nil

-- hooksecurefunc("UIParent_ManageFramePositions", function ()
--     if (InCombatLockdown()) then
--         return
--     end

--     local yOffset = PETACTIONBAR_YPOS

--     for _, actionBar in pairs({MultiBarBottomLeft, MultiBarBottomRight}) do
--         yOffset = yOffset + (actionBar:IsShown() and (actionBar:GetHeight() + 4) or 0)
--     end

--     PetActionBarFrame:ClearAllPoints()
--     PetActionBarFrame:SetPoint("TOPLEFT", MainMenuBar, "BOTTOMLEFT", PETACTIONBAR_XPOS, yOffset)
-- end)
