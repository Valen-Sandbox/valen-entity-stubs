AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "dak_ak47" )
    weapon.Category = "DakTank Unrestricted"
    weapon.AdminOnly = false
end )