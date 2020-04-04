function MoveOrderOff_Action()
    TimerStart(CreateTimer(), 0.00, false, function()
        IssueImmediateOrder(gg_unit_z000_0000, "holdposition")
    end)
end

function MoveOrderOff_Condition()
    return OrderId2String(GetIssuedOrderId()) == "smart" or OrderId2String(GetIssuedOrderId()) == "move"
end

function MoveOrderOff()
    Trigger.MoveOrderOff = CreateTrigger()
    TriggerRegisterPlayerUnitEvent(Trigger.MoveOrderOff, Player(0), EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER, nil)
    TriggerAddCondition(Trigger.MoveOrderOff, Condition(MoveOrderOff_Condition))
    TriggerAddAction(Trigger.MoveOrderOff, MoveOrderOff_Action)
end

function RightMouseAction()
    local x = BlzGetTriggerPlayerMouseX()
    local y = BlzGetTriggerPlayerMouseY()
    local group = CreateGroup()
    local boolean = CountUnitsInGroup(GroupEnumUnitsInRange(group, x, y, 50, nil)) == 0 and GetUnitState(gg_unit_z000_0000, UNIT_STATE_LIFE) > 0
    if boolean then
        TimerStart(CreateTimer(), 0.00, false, function()
            IssueImmediateOrder(gg_unit_z000_0000, "holdposition")
        end)
        DestroyGroup(group)
    end
    if Grenade.Cooldown <= 0 and Grenade.Count > 0 and GetUnitState(gg_unit_z000_0000, UNIT_STATE_LIFE) > 0 then
        Grenade.Cooldown = 3
        Grenade.Count = Grenade.Count - 1
        local effect = AddSpecialEffect("Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl", x, y)
        DestroyEffect(effect)
        UnitDamagePoint(gg_unit_z000_0000, 0, 250, x, y, 250, true, false, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_FIRE, WEAPON_TYPE_WHOKNOWS)
    end
end

function RightMouseCondition()
    return BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_RIGHT
end

function RightMouse()
    Trigger.RightMouse = CreateTrigger()
    TriggerRegisterPlayerEvent(Trigger.RightMouse, Player(0), EVENT_PLAYER_MOUSE_DOWN)
    TriggerAddCondition(Trigger.RightMouse, Condition(RightMouseCondition))
    TriggerAddAction(Trigger.RightMouse, RightMouseAction)
end

function LeftMouseUnHoldCondition()
    return BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_LEFT
end

function  LeftMouseUnHoldAction()
    Missile.State.Fire = false
end

function LeftMouseHoldingMoveAction()
    MouseX = BlzGetTriggerPlayerMouseX()
    MouseY = BlzGetTriggerPlayerMouseY()
    if GetUnitState(gg_unit_z000_0000, UNIT_STATE_LIFE) > 0 then
        local location = BlzGetTriggerPlayerMousePosition()
        SetUnitFacingToFaceLocTimed(gg_unit_z000_0000, location, 0)
        RemoveLocation(location)
    end
    CameraX = MouseX - GetUnitX(gg_unit_z000_0000)
    CameraY = MouseY - GetUnitY(gg_unit_z000_0000)
end

function LeftMouseHoldAction()
    if GetUnitState(gg_unit_z000_0000, UNIT_STATE_LIFE) > 0 then
        Missile.State.Fire = true
    else
        Missile.State.Fire = false
    end
    MouseX = BlzGetTriggerPlayerMouseX()
    MouseY = BlzGetTriggerPlayerMouseY()
end

function FireTimerAction()
    if Missile.Cooldown > 0 then
        Missile.Cooldown = Missile.Cooldown - 0.02
    end
    if State.Fire.Animation > 0 then
        State.Fire.Animation = State.Fire.Animation - 0.02
    end
    if Grenade.Cooldown > 0 then
        Grenade.Cooldown = Grenade.Cooldown - 0.02
    end
    if Missile.State.Fire and Bullets > 0 and Missile.Cooldown <= 0 and GetUnitState(gg_unit_z000_0000, UNIT_STATE_LIFE) > 0  and not Speed.Run then
        ForceUICancelBJ(Player(0))
        Missile.Cooldown = 0.1
        Bullets = Bullets - 1
        local unit = gg_unit_z000_0000
        if State.Fire.Animation <= 0 then
            SetUnitAnimationByIndex(unit, 2)
            State.Fire.Animation = 0.2
        end
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
            if GetLocationZ(location) <= z and InMapXY(BlzGetLocalSpecialEffectX(effect) + x, BlzGetLocalSpecialEffectY(effect) + y) then--IsTerrainPathable(BlzGetLocalSpecialEffectX(effect)-x*2, BlzGetLocalSpecialEffectY(effect)-y*2, PATHING_TYPE_WALKABILITY) == false then
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