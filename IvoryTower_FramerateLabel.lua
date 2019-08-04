FramerateLabel:ClearAllPoints()
FramerateLabel:SetPoint("BOTTOMLEFT", WorldFrame, "BOTTOMLEFT", 6, 6)

if (not FramerateLabel:IsShown()) then
    ToggleFramerate()
end
