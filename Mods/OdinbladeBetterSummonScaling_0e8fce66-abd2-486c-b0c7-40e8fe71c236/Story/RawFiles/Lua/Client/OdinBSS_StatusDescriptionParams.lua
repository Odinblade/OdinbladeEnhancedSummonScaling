local function sortBoonsAlphabetically(a, b)
	return a:upper() < b:upper()
end

local function OdinBSS_StatusGetDescriptionParam (status, statusSource, character, param)
    if status.Name == "OdinBSS_BOONS" and param == "OdinBSS_ACTIVE_BOONS" then
        local activeBoons = {}
        local output = "<br>"
        for statusName, desc in pairs(OdinBetterSummonScaling.BoonStatuses) do
            if character.Character:GetStatus(statusName) ~= nil then
                table.insert(activeBoons, statusName)
            end
        end

        table.sort(activeBoons, sortBoonsAlphabetically)

        for _, statusName in ipairs(activeBoons) do
            output = output.."<img src='Icon_Line' width='350%'><br><img src='Icon_BulletPoint'><font color='#ffd907'>"..OdinBetterSummonScaling.BoonStatuses[statusName]
        end
        return output
    end
end

Ext.RegisterListener("StatusGetDescriptionParam", OdinBSS_StatusGetDescriptionParam)