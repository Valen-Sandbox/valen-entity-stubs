AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "dak_usp" )
    weapon.Category = "DakTank Unrestricted"
    weapon.AdminOnly = false
end )