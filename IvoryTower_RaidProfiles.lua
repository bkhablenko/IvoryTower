local _, IvoryTower = ...

local RAID_PROFILES = {
    ["Ivory Tower — Arenas"] = {
        ["options"] = {
            ["autoActivate2Players"] = true,
            ["autoActivate3Players"] = true,
            ["autoActivatePvE"] = true,
            ["autoActivatePvP"] = true,
            ["autoActivateSpec1"] = true,
            ["autoActivateSpec2"] = true,
            ["autoActivateSpec3"] = true,
            ["autoActivateSpec4"] = true,
            ["frameHeight"] = 72,
            ["frameWidth"] = 144
        },
        ["savedPosition"] = {false, "TOP", 225, "TOP", 550, "ATTACHED", 0}
    },
    ["Ivory Tower — Battlegrounds"] = {
        ["options"] = {
            ["autoActivate10Players"] = true,
            ["autoActivate15Players"] = true,
            ["autoActivate5Players"] = true,
            ["autoActivatePvE"] = true,
            ["autoActivatePvP"] = true,
            ["autoActivateSpec1"] = true,
            ["autoActivateSpec2"] = true,
            ["autoActivateSpec3"] = true,
            ["autoActivateSpec4"] = true,
            ["frameHeight"] = 54,
            ["frameWidth"] = 108,
            ["keepGroupsTogether"] = true
        },
        ["savedPosition"] = {false, "TOP", 225, "TOP", 550, "ATTACHED", 0}
    }
}

function IvoryTower:CreateNewRaidProfile(profileName)
    local tooManyRaidProfiles = GetNumRaidProfiles() == GetMaxNumCUFProfiles()
    if (RaidProfileExists(profileName) or tooManyRaidProfiles) then
        return false
    end
    CreateNewRaidProfile(profileName)
    return true
end

for profileName, data in pairs(RAID_PROFILES) do
    if (IvoryTower:CreateNewRaidProfile(profileName)) then
        for option, value in pairs(data.options) do
            SetRaidProfileOption(profileName, option, value)
        end
        SetRaidProfileSavedPosition(profileName, unpack(data.savedPosition))
    end
end
