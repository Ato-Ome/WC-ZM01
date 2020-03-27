function LeftMouseUnHoldCondition()
    return BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_LEFT
end

function  LeftMouseUnHoldAction()
    Missile.State.Fire = false
end

function LeftMouseHoldingMoveAction()
    if Missile.State.Fire then
        MouseX = BlzGetTriggerPlayerMouseX()
        MouseY = BlzGetTriggerPlayerMouseY()
        local location = BlzGetTriggerPlayerMousePosition()
        SetUnitFacingToFaceLocTimed(gg_unit_z000_0000, location, 0)
        RemoveLocation(location)
    end
end

function LeftMouseHoldAction()
    Missile.State.Fire = true
    MouseX = BlzGetTriggerPlayerMouseX()
    MouseY = BlzGetTriggerPlayerMouseY()
end

function FireTimerAction()
    if Missile.Cooldown > 0 then
        Missile.Cooldown = Missile.Cooldown - 0.02
    end
    if Missile.State.Fire == true and Bullets > 0 and Missile.Cooldown <= 0 then
        Missile.Cooldown = 0.1
        Bullets = Bullets - 1
        local unit = gg_unit_z000_0000
        SetUnitTimeScalePercent(unit, 150)
        SetUnitAnimation(unit, "attack")
        local x1 = GetUnitX(unit)
        local y1 = GetUnitY(unit)
        local z = BlzGetUnitZ(unit) + 100
        local x2 = MouseX
        local y2 = MouseY
        local x = x2-x1
        local y = y2-y1
        local length = SquareRoot(x^2 + y^2)
        x = (x/length)*25
        y = (y/length)*25
        local effect = AddSpecialEffect("Abilities\\Weapons\\PriestMissile\\PriestMissile.mdl", x1 + x*2, y1 + y*2)
        BlzSetSpecialEffectScale(effect, 0.6)
        local location
        TimerStart(CreateTimer(), 0.02, true, function()
            location = Location(BlzGetLocalSpecialEffectX(effect) + x, BlzGetLocalSpecialEffectY(effect) + y)
            if GetLocationZ(location) <= z then--IsTerrainPathable(BlzGetLocalSpecialEffectX(effect)-x*2, BlzGetLocalSpecialEffectY(effect)-y*2, PATHING_TYPE_WALKABILITY) == false then
                local group = CreateGroup()
                BlzSetSpecialEffectX(effect, BlzGetLocalSpecialEffectX(effect) + x)
                BlzSetSpecialEffectY(effect, BlzGetLocalSpecialEffectY(effect) + y)
                BlzSetSpecialEffectZ(effect, z)
                GroupEnumUnitsInRange(group, BlzGetLocalSpecialEffectX(effect), BlzGetLocalSpecialEffectY(effect), 128, Filter(function()
                    local dx = GetUnitX(GetFilterUnit()) - (BlzGetLocalSpecialEffectX(effect) + x)
                    local dy = GetUnitY(GetFilterUnit()) - (BlzGetLocalSpecialEffectY(effect) + y)
                    local distance = SquareRoot(dx * dx + dy * dy)
                    local boolean = {
                        [1] = IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(unit)),
                        [2] = GetUnitState(GetFilterUnit(), UNIT_STATE_LIFE) > 0,
                        [3] = BlzGetUnitZ(GetFilterUnit()) >= z - 228,
                        [4] = BlzGetUnitZ(GetFilterUnit()) <= z + 286,
                        [5] = distance <= BlzGetUnitCollisionSize(GetFilterUnit())
                    }
                    return boolean[1] and boolean[2] and boolean[3] and boolean[4] and boolean[5]
                end))
                if CountUnitsInGroup(group) > 0 then
                    UnitDamageTarget(unit, FirstOfGroup(group), 50, true, true, ATTACK_TYPE_MELEE, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
                    DestroyTimer(GetExpiredTimer())
                    DestroyEffect(effect)
                end
                GroupClear(group)
            else
                RemoveLocation(location)
                DestroyEffect(effect)
                DestroyTimer(GetExpiredTimer())
            end
        end)
    end
end

function LeftMouseHoldCondition()
    return BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_LEFT
end

function LeftMouse()
    TimerStart(CreateTimer(), 0.02, true, FireTimerAction)
    EnableDragSelect(false, false)
    Trigger.LeftMouseHold = CreateTrigger()
    TriggerRegisterPlayerEvent(Trigger.LeftMouseHold, Player(0), EVENT_PLAYER_MOUSE_DOWN)
    TriggerAddCondition(Trigger.LeftMouseHold, Condition(LeftMouseHoldCondition))
    TriggerAddAction(Trigger.LeftMouseHold, LeftMouseHoldAction)
    Trigger.LeftMouseHoldingMove = CreateTrigger()
    TriggerRegisterPlayerEvent(Trigger.LeftMouseHoldingMove, Player(0), EVENT_PLAYER_MOUSE_MOVE)
    TriggerAddAction(Trigger.LeftMouseHoldingMove, LeftMouseHoldingMoveAction)
    Trigger.LeftMouseUnHold = CreateTrigger()
    TriggerRegisterPlayerEvent(Trigger.LeftMouseUnHold, Player(0), EVENT_PLAYER_MOUSE_UP)
    TriggerAddCondition(Trigger.LeftMouseUnHold, Condition(LeftMouseUnHoldCondition))
    TriggerAddAction(Trigger.LeftMouseUnHold, LeftMouseUnHoldAction)
end