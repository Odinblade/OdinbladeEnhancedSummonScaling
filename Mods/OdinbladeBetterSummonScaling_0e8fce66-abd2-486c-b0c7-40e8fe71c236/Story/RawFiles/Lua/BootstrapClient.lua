local function SessionLoading()
    Ext.Print("[OdinBSS:BootstrapClient.lua] Session is loading.")
end

Ext.Require("Shared/OdinBSS_SharedData.lua")
Ext.Require("Client/OdinBSS_StatusDescriptionParams.lua")

local ModuleLoading = function ()
    Ext.Print("[OdinBSS:BootstrapClient.lua] Module is loading.")
end

Ext.RegisterListener("ModuleLoading", ModuleLoading)
Ext.RegisterListener("SessionLoading", SessionLoading)