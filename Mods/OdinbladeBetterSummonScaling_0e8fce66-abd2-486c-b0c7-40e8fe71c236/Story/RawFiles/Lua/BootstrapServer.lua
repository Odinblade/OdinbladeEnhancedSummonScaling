local function SessionLoading()
    Ext.Print("[OdinBSS:BootstrapServer.lua] Session is loading.")
end

local ModuleLoading = function ()
    Ext.Print("[OdinBSS:BootstrapServer.lua] Module is loading.")
end

Ext.RegisterListener("ModuleLoading", ModuleLoading)
Ext.RegisterListener("SessionLoading", SessionLoading)