AddCSLuaFile()
cfcEntityStubber.registerStubber( "arccw_uc" )

-- Putting this here just for the sake of not having to make a new file for every UC gun over this change
timer.Simple( 0, function()
    ArcCW.UC.BodyDamageMults = {
        [HITGROUP_HEAD] = 1.75,
        [HITGROUP_CHEST] = 1.15,
        [HITGROUP_STOMACH] = 1,
        [HITGROUP_LEFTARM] = 0.85,
        [HITGROUP_RIGHTARM] = 0.85,
        [HITGROUP_LEFTLEG] = 0.5,
        [HITGROUP_RIGHTLEG] = 0.5,
    }
end )