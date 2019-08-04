local _, IvoryTower = ...

local function HideMainMenuBarTextures()
    MainMenuBarArtFrame.LeftEndCap:Hide()
    MainMenuBarArtFrame.RightEndCap:Hide()
    MainMenuBarArtFrameBackground:Hide()
    MicroButtonAndBagsBar.MicroBagBar:Hide()
end
HideMainMenuBarTextures()

local function HideActionBarButtons()
    MainMenuBarArtFrame.PageNumber:Hide()
    ActionBarUpButton:Hide()
    ActionBarDownButton:Hide()
end
HideActionBarButtons()

-- MainMenuBar:SetWidth(512)

ActionButton6:ClearAllPoints()
ActionButton6:SetPoint("BOTTOMRIGHT", MainMenuBarArtFrame, "BOTTOM", -3, 0)

for i = 5, 1, -1 do
    local actionButton = _G["ActionButton" .. i]

    actionButton:ClearAllPoints()
    actionButton:SetPoint("RIGHT", _G["ActionButton" .. i + 1], "LEFT", -6, 0)
end

-- ActionButton5:ClearAllPoints()
-- ActionButton5:SetPoint("RIGHT", ActionButton6, "LEFT", -6, 0)

-- ActionButton4:ClearAllPoints()
-- ActionButton4:SetPoint("RIGHT", ActionButton5, "LEFT", -6, 0)

-- ActionButton3:ClearAllPoints()
-- ActionButton3:SetPoint("RIGHT", ActionButton4, "LEFT", -6, 0)

-- ActionButton2:ClearAllPoints()
-- ActionButton2:SetPoint("RIGHT", ActionButton3, "LEFT", -6, 0)

-- ActionButton1:ClearAllPoints()
-- ActionButton1:SetPoint("RIGHT", ActionButton2, "LEFT", -6, 0)

MultiBarBottomLeft:ClearAllPoints()
MultiBarBottomLeft:SetPoint("BOTTOMLEFT", ActionButton1, "TOPLEFT", 0, 6)
MultiBarBottomLeft.ignoreFramePositionManager = true

MultiBarBottomRightButton7:ClearAllPoints()
MultiBarBottomRightButton7:SetPoint("LEFT", MultiBarBottomRightButton6, "RIGHT", 6, 0)

MultiBarBottomRight:ClearAllPoints()
MultiBarBottomRight:SetPoint("BOTTOMLEFT", MultiBarBottomLeftButton1, "TOPLEFT", 0, 6)
MultiBarBottomRight.ignoreFramePositionManager = true

-- MainMenuBarBackpackButton:ClearAllPoints()
-- MainMenuBarBackpackButton:SetPoint("BOTTOMRIGHT", MainMenuMicroButton, "TOPRIGHT", 0, 6)

-- hooksecurefunc(MainMenuBar, "ChangeMenuBarSizeAndPosition", function (self)
--     local _, width, height = GetAtlasInfo("hud-MainMenuBar-small")
--     self:SetSize(width, height)
--     MainMenuBarArtFrame:SetSize(width, height)
--     MainMenuBarArtFrameBackground:SetSize(width, height)
--     MainMenuBarArtFrameBackground.BackgroundLarge:Hide()
--     MainMenuBarArtFrameBackground.BackgroundSmall:Show()
--     MainMenuBarArtFrame.PageNumber:ClearAllPoints()
--     MainMenuBarArtFrame.PageNumber:SetPoint("RIGHT", MainMenuBarArtFrameBackground, "RIGHT", -6, -3)
--     StatusTrackingBarManager:SetBarSize(false)
-- end)

-- hooksecurefunc(MainMenuBar, "SetPositionForStatusBars", function (self)
--     self:SetYOffset(16)
-- end)

-- hooksecurefunc(StatusTrackingBarManager, "SetSingleBarSize", function (self, watchBar, width)
--     local height = 10
--     if (self.largeSize) then
--         self.SingleBarLarge:SetSize(width, height);
--     else
--         self.SingleBarSmall:SetSize(width, height);
--     end
--     watchBar.StatusBar:SetSize(width, height);
--     watchBar:SetSize(width, height);
-- end)

-- hooksecurefunc(StatusTrackingBarManager, "SetDoubleBarSize", function (self, watchBar, width)
--     local height = 10
--     if (self.largeSize) then
--         self.SingleBarLarge:SetSize(width, height);
--         self.SingleBarLargeUpper:SetSize(width, height)
--     else
--         self.SingleBarSmall:SetSize(width, height);
--         self.SingleBarSmallUpper:SetSize(width, height);
--     end
--     watchBar.StatusBar:SetSize(width, height);
--     watchBar:SetSize(width, height);
-- end)

MainMenuBarVehicleLeaveButton:HookScript("OnShow", function (self)
    self:ClearAllPoints()
    self:SetPoint("BOTTOM", MultiBarBottomRightButton1, "TOP", 0, 6)
end)

-- MainMenuTrackingBar_Configure = function (watchBar, onTop)
--     local statusBar = watchBar.StatusBar
--     statusBar:SetFrameLevel(MainMenuBarArtFrame:GetFrameLevel() - 1)
--     statusBar:SetHeight(10)

--     local overlayFrame = watchBar.OverlayFrame
--     overlayFrame.Text:SetPoint("CENTER", overlayFrame, "CENTER")

--     local yOffset = (onTop and statusBar:GetHeight() or 0) + 6
--     watchBar:ClearAllPoints()
--     watchBar:SetPoint("BOTTOM", UIParent, "BOTTOM", 0, yOffset)

--     for i = 0, 3 do
--         statusBar["WatchBarTexture" .. i]:Hide()
--         statusBar["XPBarTexture" .. i]:Show()
--     end
-- end

-- hooksecurefunc("UIParent_ManageFramePositions", function ()
--     if (InCombatLockdown()) then
--         return
--     end

--     -- local yOffset = 12

--     -- if (UnitLevel("player") < MAX_PLAYER_LEVEL) then
--     --     yOffset = yOffset + 16
--     -- end

--     -- if (StatusTrackingBarManager:GetNumberVisibleBars() > 1) then
--     --     yOffset = yOffset + 10
--     -- end

--     MainMenuBar:ClearAllPoints()
--     MainMenuBar:SetPoint("BOTTOM", UIParent, "BOTTOM", 0, MainMenuBar:GetYOffset())
--     print(MainMenuBar:GetYOffset())
-- end)
