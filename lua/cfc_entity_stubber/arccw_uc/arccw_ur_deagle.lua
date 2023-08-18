AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "arccw_ur_deagle" )
    weapon.SightTime = 0.1 -- Orig: 0.25
    weapon.JumpDispersion = 850 -- Orig: 1000
end )