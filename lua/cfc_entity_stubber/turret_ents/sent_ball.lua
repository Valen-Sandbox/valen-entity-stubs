AddCSLuaFile()

-- I know this isn't a turret entity, but I don't feel like putting this in a better place rn
cfcEntityStubber.registerStub( function()
    local ball = scripted_ents.GetStored( "sent_ball" ).t

    -- Prevent overhealing by eating balls
    ball.Use = function( ent, activator )
        ent:Remove()

        if activator:IsPlayer() then
            local oldHealth = activator:Health()
            local newHealth = math.Clamp( oldHealth + 5, 0, activator:GetMaxHealth() )
            activator:SetHealth( newHealth )
            activator:SendLua( "achievements.EatBall()" )
        end
    end
end )