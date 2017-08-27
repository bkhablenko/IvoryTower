local function HidePetActionBarTextures()
    for i = 0, 1 do
        local texture = _G["SlidingActionBarTexture" .. i]
        texture:Hide()
        texture.Show = function () end
    end
end
HidePetActionBarTextures()

UIPARENT_MANAGED_FRAME_POSITIONS["PETACTIONBAR_YPOS"] = {
    bottomEither = MultiBarBottomLeft:GetHeight() + 4,
    bottomRight = MultiBarBottomRight:GetHeight() + 4,
    isVar = "yAxis",
    yOffset = 96
}
