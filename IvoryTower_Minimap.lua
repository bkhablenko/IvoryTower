local _, IvoryTower = ...

Minimap:EnableMouseWheel(true)
Minimap:HookScript("OnMouseWheel", function (self, delta)
    if (delta > 0) then
        Minimap_ZoomIn()
    else
        Minimap_ZoomOut()
    end
end)
