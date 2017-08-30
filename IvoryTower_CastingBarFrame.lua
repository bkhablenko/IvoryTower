local function ApplyCastingBarTextures()
    for _, v in pairs({"Border", "Flash"}) do
        local texture = CastingBarFrame[v]
        texture:SetWidth(512)
        texture:SetTexture("Interface\\AddOns\\IvoryTower\\Media\\Textures\\UI-CastingBar-" .. v)
    end
    CastingBarFrame:SetWidth(320)
end
ApplyCastingBarTextures()

local function ShowCastingBarIcon(size)
    local icon = CastingBarFrame.Icon

    icon:SetWidth(size)
    icon:SetHeight(size)

    icon:ClearAllPoints()
    icon:SetPoint("RIGHT", CastingBarFrame, "LEFT", -12, 3)
    icon:Show()
    icon.Hide = function () end
end
ShowCastingBarIcon(32)

local function CreateCastingBarTimer()
    CastingBarFrame.Timer = CastingBarFrame:CreateFontString(nil)
    CastingBarFrame.Timer:SetFont(STANDARD_TEXT_FONT, 12, "OUTLINE")
    CastingBarFrame.Timer:SetPoint("BOTTOM", CastingBarFrame, "TOP", 0, 14)

    CastingBarFrame:HookScript("OnUpdate", function (self, ...)
        local text
        if (self.casting or self.channeling) then
            text = format("%1.1f / %2.1f", self.value, self.maxValue)
        end
        self.Timer:SetText(text)
    end)
end
CreateCastingBarTimer()

UIPARENT_MANAGED_FRAME_POSITIONS["CastingBarFrame"] = {
    baseY = 16,
    bottomEither = MultiBarBottomLeft:GetHeight() + 4,
    bottomRight = MultiBarBottomRight:GetHeight() + 4,
    maxLevel = -16,
    pet = PetActionBarFrame:GetHeight(),
    talkingHeadFrame = 155,
    watchBar = 10,
    yOffset = 96
}
