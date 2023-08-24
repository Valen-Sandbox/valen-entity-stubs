AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "arccw_ur_329" )
    weapon.SightTime = 0.125 -- Orig: 0.25
    weapon.JumpDispersion = 850 -- Orig: 1000
    weapon.Delay = 0.15 -- Orig: 0.25
end )