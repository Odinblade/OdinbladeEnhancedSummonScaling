local function SessionLoading()
    Ext.Print("[OdinBSS:BootstrapServer.lua] Session is loading.")
end

-- Ext.Require("Shared/OdinSCO_Utility.lua")
-- Ext.Require("Server/OdinSCO_ComboSkills.lua")
-- Ext.Require("Shared/OdinSCO_ComboPoints.lua")

local ModuleLoading = function ()
    Ext.Print("[OdinBSS:BootstrapServer.lua] Module is loading.")
    -- OverrideStats()
end

Ext.RegisterListener("ModuleLoading", ModuleLoading)
Ext.RegisterListener("SessionLoading", SessionLoading)