-- /run MoneyWonAlertSystem:AddAlert(815)

AlertFrame:ClearAllPoints()
AlertFrame:SetPoint("BOTTOM", UIParent)

UIPARENT_MANAGED_FRAME_POSITIONS["AlertFrame"] = {
    baseY = 16,
    bottomEither = MultiBarBottomLeft:GetHeight() + 4,
    bottomRight = MultiBarBottomRight:GetHeight() + 4,
    maxLevel = -16,
    pet = PetActionBarFrame:GetHeight(),
    talkingHeadFrame = TalkingHeadFrame:GetHeight(),
    watchBar = 10,
    yOffset = 48
}
