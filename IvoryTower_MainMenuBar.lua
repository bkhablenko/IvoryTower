local _, IvoryTower = ...

local function HideMainMenuBarTextures()
    MainMenuBarLeftEndCap:Hide()
    MainMenuBarRightEndCap:Hide()
    for i = 0, 3 do
        _G["MainMenuBarTexture" .. i]:Hide()
    end
    MainMenuBarMaxLevelBar:SetAlpha(0)
end
HideMainMenuBarTextures()

local function HideActionBarButtons()
    MainMenuBarPageNumber:Hide()
    ActionBarUpButton:Hide()
    ActionBarDownButton:Hide()
end
HideActionBarButtons()

MainMenuBar:SetWidth(512)

MultiBarBottomLeft:ClearAllPoints()
MultiBarBottomLeft:SetPoint("BOTTOMLEFT", ActionButton1, "TOPLEFT", 0, 6)
MultiBarBottomLeft.ignoreFramePositionManager = true

MultiBarBottomRight:ClearAllPoints()
MultiBarBottomRight:SetPoint("BOTTOM", MultiBarBottomLeft, "TOP", 0, 4)

MainMenuBarBackpackButton:ClearAllPoints()
MainMenuBarBackpackButton:SetPoint("BOTTOMRIGHT", MainMenuMicroButton, "TOPRIGHT", 0, -12)

MainMenuBarVehicleLeaveButton:HookScript("OnShow", function (self)
    self:ClearAllPoints()
    self:SetPoint("BOTTOMLEFT", CharacterMicroButton, "TOPLEFT", 0, -12)
end)

MainMenuTrackingBar_Configure = function (watchBar, onTop)
    local statusBar = watchBar.StatusBar
    statusBar:SetFrameLevel(MainMenuBarArtFrame:GetFrameLevel() - 1)
    statusBar:SetHeight(10)

    local overlayFrame = watchBar.OverlayFrame
    overlayFrame.Text:SetPoint("CENTER", overlayFrame, "CENTER")

    local yOffset = (onTop and statusBar:GetHeight() or 0) + 6
    watchBar:ClearAllPoints()
    watchBar:SetPoint("BOTTOM", UIParent, "BOTTOM", 0, yOffset)

    for i = 0, 3 do
        statusBar["WatchBarTexture" .. i]:Hide()
        statusBar["XPBarTexture" .. i]:Show()
    end
end

hooksecurefunc("UIParent_ManageFramePositions", function ()
    if (InCombatLockdown()) then
        return
    end

    local yOffset = 12

    if (not MainMenuBarMaxLevelBar:IsShown()) then
        yOffset = yOffset + 16
    end

    if (IvoryTower:GetWatchBarCount() > 1) then
        yOffset = yOffset + 10
    end

    MainMenuBar:ClearAllPoints()
    MainMenuBar:SetPoint("BOTTOM", UIParent, "BOTTOM", 0, yOffset)
end)
