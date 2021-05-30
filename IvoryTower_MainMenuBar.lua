local _, IvoryTower = ...

local function HideMainMenuBarTextures()
    MainMenuBarLeftEndCap:Hide()
    MainMenuBarRightEndCap:Hide()
    -- for i = 0, 3 do
    --     _G["MainMenuBarTexture" .. i]:Hide()
    -- end
    -- MainMenuBarMaxLevelBar:SetAlpha(0)
end
HideMainMenuBarTextures()

local function HideActionBarButtons()
    MainMenuBarPageNumber:Hide()
    ActionBarUpButton:Hide()
    ActionBarDownButton:Hide()
end
-- HideActionBarButtons()
