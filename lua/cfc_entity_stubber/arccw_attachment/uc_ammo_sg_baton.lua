AddCSLuaFile()

local screenFadeColor = Color(128, 0, 0, 64)
local viewPunchAng = Angle(3, 0, 0)

cfcEntityStubber.registerStub( function()
    local att = cfcEntityStubber.getAttachmentArcCW( "uc_ammo_sg_baton" )
    att.Hook_PhysBulletHit = function(_, data) -- Modified to prevent annoyances to builders
        if CLIENT then return end

        local tr = data.tr
        local bullet = data.bullet
        local ent = tr.Entity

        if ent and (ent:IsPlayer() or ent:IsNPC()) and ent:GetActiveWeapon() then
            local delta = bullet.Travelled / (bullet.Range / ArcCW.HUToM)
            delta = math.Clamp(delta, 0, 1)
            local dmg = Lerp(delta, bullet.DamageMax, bullet.DamageMin) -- one day I will understand this math
            local chance = math.random() * bullet.DamageMax

            -- Chance for a weapon drop increases the closer the shooter is to the target, but is never guaranteed
            local inBuildmode = ent:GetNWBool("_Kyle_Buildmode", false) or bullet.Attacker:GetNWBool("_Kyle_Buildmode", false)

            if chance <= dmg * .5 and not inBuildmode then
                ent:DropWeapon()

                if ent:IsPlayer() then
                    ent:ScreenFade(1, screenFadeColor, .5, 0)
                    ent:ViewPunch(viewPunchAng)
                end
            end

            if ent:IsNPC() then
                ent:SetSchedule(SCHED_FLINCH_PHYSICS)
            end
        end
    end
    cfcEntityStubber.applyAttachmentChangeArcCW( "uc_ammo_sg_baton", att )
end )