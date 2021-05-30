local _, IvoryTower = ...

FramerateLabel:ClearAllPoints()
FramerateLabel:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 6, 6)

if (not FramerateLabel:IsShown()) then
    ToggleFramerate()
end
