AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "dak_m4a1" )
    weapon.Category = "DakTank Unrestricted"
    weapon.AdminOnly = false
end )