AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "dak_p90" )
    weapon.Category = "DakTank Unrestricted"
    weapon.AdminOnly = false
end )