local _, IvoryTower = ...

TalkingHeadFrame:ClearAllPoints()
TalkingHeadFrame:SetPoint("TOP", WorldFrame, "TOP", 0, -24)
TalkingHeadFrame.SetPoint = function () end

for i, alertFrameSubSystem in ipairs(AlertFrame.alertFrameSubSystems) do
    if alertFrameSubSystem.anchorFrame == TalkingHeadFrame then
        tremove(AlertFrame.alertFrameSubSystems, i)
        return
    end
end
