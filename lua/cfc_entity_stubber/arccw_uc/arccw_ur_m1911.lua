AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "arccw_ur_m1911" )
    weapon.SightTime = 0.125 -- Orig: 0.25
    weapon.JumpDispersion = 850 -- Orig: 1000
    weapon.Delay = 60 / 425 -- Orig: 60 / 400
end )