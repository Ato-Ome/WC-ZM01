gg_trg_Timer = nil
gg_trg_Init = nil
gg_unit_z000_0000 = nil
function InitGlobals()
end

function CreateUnitsForPlayer0()
    local p = Player(0)
    local u
    local unitID
    local t
    local life
    gg_unit_z000_0000 = BlzCreateUnitWithSkin(p, FourCC("z000"), -2325.0, -926.4, 271.270, FourCC("z000"))
end

function CreateNeutralHostile()
    local p = Player(PLAYER_NEUTRAL_AGGRESSIVE)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("uabo"), -1197.8, -253.8, 208.717, FourCC("uabo"))
    u = BlzCreateUnitWithSkin(p, FourCC("uabo"), -788.5, -993.2, 176.454, FourCC("uabo"))
    u = BlzCreateUnitWithSkin(p, FourCC("uabo"), -495.1, -966.5, 177.824, FourCC("uabo"))
    u = BlzCreateUnitWithSkin(p, FourCC("uabo"), -874.3, -195.8, 205.086, FourCC("uabo"))
    u = BlzCreateUnitWithSkin(p, FourCC("uabo"), -588.7, -61.8, 205.092, FourCC("uabo"))
    u = BlzCreateUnitWithSkin(p, FourCC("uabo"), -1383.7, 138.3, 226.382, FourCC("uabo"))
    u = BlzCreateUnitWithSkin(p, FourCC("uabo"), -992.3, 184.4, 218.115, FourCC("uabo"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -1292.7, -436.2, 203.110, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("uabo"), -946.1, -797.8, 183.921, FourCC("uabo"))
    u = BlzCreateUnitWithSkin(p, FourCC("uabo"), -454.2, -324.5, 196.604, FourCC("uabo"))
    u = BlzCreateUnitWithSkin(p, FourCC("uabo"), -350.6, -780.7, 183.251, FourCC("uabo"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -1185.2, -515.1, 197.813, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -1226.0, -437.7, 201.827, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -1128.6, -579.0, 194.310, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -1103.8, -420.4, 200.581, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -1109.5, -495.1, 197.634, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -1042.2, -518.7, 195.851, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -1020.8, -445.2, 198.465, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -959.1, -535.0, 194.338, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -950.5, -466.4, 196.827, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -888.4, -434.2, 197.303, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -884.8, -506.7, 194.676, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -815.6, -585.4, 191.285, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -810.9, -486.5, 266.229, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -756.2, -453.8, 147.386, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -656.6, -510.2, 192.676, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -668.7, -597.5, 189.936, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -581.0, -434.3, 194.462, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -531.1, -493.3, 192.341, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -475.3, -563.3, 189.947, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -422.6, -491.9, 191.712, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -344.7, -429.7, 192.954, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -301.3, -510.8, 190.536, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -211.8, -588.4, 188.099, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -210.4, -488.8, 190.668, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -93.8, -471.1, 190.564, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -11.3, -473.5, 190.144, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), 54.1, -550.2, 188.107, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), 80.8, -434.4, 190.656, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), -95.8, -551.7, 188.597, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), 212.8, -504.1, 188.617, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), 167.8, -570.6, 187.296, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), 327.0, -500.3, 188.336, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), 327.3, -605.6, 186.134, FourCC("nzom"))
    u = BlzCreateUnitWithSkin(p, FourCC("nzom"), 395.0, -443.0, 189.295, FourCC("nzom"))
end

function CreatePlayerBuildings()
end

function CreatePlayerUnits()
    CreateUnitsForPlayer0()
end

function CreateAllUnits()
    CreatePlayerBuildings()
    CreateNeutralHostile()
    CreatePlayerUnits()
end

--CUSTOM_CODE
Trigger = {}
Missile = {
    State = {
        Fire = false
    },
    Cooldown = 0
}
Grenade = {
    Count = 100,
    Cooldown = 0
}
MouseX = 0
MouseY = 0
Bullets = 10000
State = {
    Move = {
        W = 0,
        S = 0,
        A = 0,
        D = 0,
        Animation = 0
    },
    Fire = {
        Animation = 0
    }
}
Speed = {
    Default = 1,
    Bonus = 0,
    Run = false,
    Energy = 1000,
    MaxEnergy = 1000,
    EnergyRegen = 2,
    EnergySpend = 10,
    EnergyOff = false
}
Alt = {
    Cooldown = 0,
    CooldownDefault = 7
}
CameraX = 0
CameraY = 0

function Start()
    MoveOrderOff()
    MoveKey()
    LeftMouse()
    RightMouse()
    SetUnitPathing(gg_unit_z000_0000, false)
    BlzHideOriginFrames(true)
    BlzFrameSetVisible(BlzGetFrameByName("ConsoleUIBackdrop", 0), false)
    for i = 0,11 do
        BlzFrameSetVisible(BlzGetFrameByName("CommandButton_"..i, 0), false)
    end
    local GAME_UI     = BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0)
    local WORLD_FRAME = BlzGetOriginFrame(ORIGIN_FRAME_WORLD_FRAME, 0)
    BlzHideOriginFrames(true)
    BlzFrameSetAllPoints(WORLD_FRAME, GAME_UI)
    BlzFrameSetVisible(BlzGetFrameByName("CinematicPortrait", 0), true)
    BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_PORTRAIT, 0), true)
end
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
---@param x real
---@param y real
---@return boolean
function InMapXY(x, y)
    return x > GetRectMinX(bj_mapInitialPlayableArea) and x < GetRectMaxX(bj_mapInitialPlayableArea) and y > GetRectMinY(bj_mapInitialPlayableArea) and y < GetRectMaxY(bj_mapInitialPlayableArea)
end

---@param x real
---@param distance real
---@param angle real radian
---@return real
function GetPolarOffsetX(x, distance, angle)
    return x + distance * math.cos(angle)
end

---@param y real
---@param distance real
---@param angle real radian
---@return real
function GetPolarOffsetY(y, distance, angle)
    return y + distance * math.sin(angle)
end

---@param x real
---@param distance real
---@param angle real degrees
---@return real
function MoveX(x, distance, angle)
    return x + distance * math.cos(angle * bj_DEGTORAD)
end

---@param y real
---@param distance real
---@param angle real degrees
---@return real
function MoveY(y, distance, angle)
    return y + distance * math.sin(angle * bj_DEGTORAD)
end

local GetTerrainZ_location = Location(0, 0)
---@param x real
---@param y real
---@return real
function GetTerrainZ(x, y)
    MoveLocation(GetTerrainZ_location, x, y)
    return GetLocationZ(GetTerrainZ_location)
end

---@param target unit
---@return real
function GetUnitZ(target)
    MoveLocation(GetTerrainZ_location, GetUnitX(target), GetUnitY(target))
    return GetLocationZ(GetTerrainZ_location) + GetUnitFlyHeight(target)
end

---@param target unit
---@param z real
function SetUnitZ(target, z)
    UnitAddAbility(target, FourCC('Aave'))
    UnitRemoveAbility(target, FourCC('Aave'))
    MoveLocation(GetTerrainZ_location, GetUnitX(target), GetUnitY(target))
    SetUnitFlyHeight(target, z - GetLocationZ(GetTerrainZ_location), 0)
end

---@param h real максимальная высота в прыжке на середине расстояния (x = d / 2)
---@param d real общее расстояние до цели
---@param x real расстояние от исходной цели до точки, где следует взять высоту по параболе
---@return real
function ParabolaZ (h, d, x)
    return (4 * h / d) * (d - x) * (x / d)
end

---@param zs real начальная высота высота одного края дуги
---@param ze real конечная высота высота другого края дуги
---@param h real максимальная высота на середине расстояния (x = d / 2)
---@param d real общее расстояние до цели
---@param x real расстояние от исходной цели до точки
---@return real
function GetParabolaZ(zs, ze, h, d, x)
    return (2 * (zs + ze - 2 * h) * (x / d - 1) + (ze - zs)) * (x / d) + zs
end

---@param xa real
---@param ya real
---@param xb real
---@param yb real
---@return real
function DistanceBetweenXY(xa, ya, xb, yb)
    local dx = xb - xa
    local dy = yb - ya
    return math.sqrt(dx * dx + dy * dy)
end

---@param xa real
---@param ya real
---@param za real
---@param xb real
---@param yb real
---@param zb real
---@return real
function DistanceBetweenXYZ(xa, ya, za, xb, yb, zb)
    local dx = xb - xa
    local dy = yb - ya
    local dz = zb - za
    return math.sqrt(dx * dx + dy * dy + dz * dz)
end

---@param xa real
---@param ya real
---@param xb real
---@param yb real
---@return real radian
function AngleBetweenXY(xa, ya, xb, yb)
    return math.atan(yb - ya, xb - xa)
end

---@param a real radian
---@param b real radian
---@return real radian
function AngleDifference(a, b)
    local c---@type real
    local d---@type real
    if a > b then
        c = a - b
        d = b - a + 2 * math.pi
    else
        c = b - a
        d = a - b + 2 * math.pi
    end
    return c > d and d or c
end

---@author xgm.guru/p/wc3/warden-math
---@param a real degrees
---@param b real degrees
---@return real degrees
function AngleDifferenceDeg(a, b)
    a, b = math.abs(a, 360), math.abs(b, 360)
    local x---@type real
    if (a > b) then
        a, b = b, a
    end
    x = b - 360
    if (b - a > a - x) then
        b = x
    end
    return math.abs(a - b)
end

-- Находит длину перпендикуляра от отрезка, заданного xa, ya, xb, yb к точке, заданной xc, yc
---@author https://xgm.guru/p/wc3/perpendicular
---@param xa real
---@param ya real
---@param xb real
---@param yb real
---@param xc real
---@param yc real
---@return real
function Perpendicular (xa, ya, xb, yb, xc, yc)
    return math.sqrt((xa - xc) * (xa - xc) + (ya - yc) * (ya - yc)) * math.sin(math.atan(yc - ya, xc - xa) - math.atan(yb - ya, xb - xa))
end
function AltKeyAction()
    if Speed.Energy > Speed.EnergySpend * 20 and GetUnitState(gg_unit_z000_0000, UNIT_STATE_LIFE) > 0 and (State.Move.W + State.Move.S ~= 0 or State.Move.A + State.Move.D ~= 0) then
        if Alt.Cooldown <= 0 then
            Speed.Bonus = Speed.Bonus + 5
            Alt.Cooldown = Alt.CooldownDefault
            Speed.Energy = Speed.Energy - Speed.EnergySpend * 20
            TimerStart(CreateTimer(), 0.2, false, function()
                Speed.Bonus = Speed.Bonus - 5
                DestroyTimer(GetExpiredTimer())
            end)
        end
    end

end

function ShiftKeyUnHoldAction()
    Speed.Bonus = Speed.Bonus - 1
    Speed.Run = false
end

function ShiftKeyHoldAction()
    if not Speed.Run and GetUnitState(gg_unit_z000_0000, UNIT_STATE_LIFE) > 0 then
        Speed.Bonus = Speed.Bonus + 1
        Speed.Run = true
    end
end

function Move()
    if State.Move.Animation > 0 then
        State.Move.Animation = State.Move.Animation - 0.02
    end
    if Alt.Cooldown > 0 then
        Alt.Cooldown = Alt.Cooldown - 0.02
    end
    if not Speed.Run then
        if Speed.Energy < Speed.MaxEnergy then
            Speed.Energy = Speed.Energy + Speed.EnergyRegen
            print(Speed.Energy)
        end
    end
    if (State.Move.W + State.Move.S ~= 0 or State.Move.A + State.Move.D ~= 0) and GetUnitState(gg_unit_z000_0000, UNIT_STATE_LIFE) > 0 then
        if CameraX ~= MouseX + GetUnitX(gg_unit_z000_0000) then
            MouseX = GetUnitX(gg_unit_z000_0000) + CameraX
        end
        if CameraY ~= MouseY + GetUnitY(gg_unit_z000_0000) then
            MouseY = GetUnitY(gg_unit_z000_0000) + CameraY
        end
        local unit = gg_unit_z000_0000
        local x1 = GetUnitX(unit)
        local y1 = GetUnitY(unit)
        local x = State.Move.A + State.Move.D
        local y = State.Move.W + State.Move.S
        local length = SquareRoot(x^2 + y^2)
        local speed
        if Speed.Energy > Speed.EnergySpend then
            speed = Speed.Default + Speed.Bonus
        else
            speed = Speed.Default
        end
        if length ~= 0 then
            x = (x/length)*7*speed
            y = (y/length)*7*speed
            if InMapXY(x1 + x, y1 + y) then
                if Speed.Run then
                    if Speed.Energy > Speed.EnergySpend then
                        Speed.Energy = Speed.Energy - Speed.EnergySpend
                        print(Speed.Energy)
                    end
                end
                if not Missile.State.Fire or (Missile.State.Fire and Speed.Run) then
                    local location = Location(x1 + x, y1 + y)
                    SetUnitFacingToFaceLocTimed(unit, location, 0)
                    RemoveLocation(location)
                    if State.Move.Animation <= 0 then
                        SetUnitAnimationByIndex(unit, 5)
                        State.Move.Animation = 0.8
                    end
                end
                SetUnitX(unit, x1 + x)
                SetUnitY(unit, y1 + y)
            end
        end
    else
        if not Missile.State.Fire then
            ResetUnitAnimation(gg_unit_z000_0000)
        end
    end
end

function DKeyUnHoldAction()
    State.Move.D = 0
end

function DKeyHoldAction()
    State.Move.D = 1
end

function AKeyUnHoldAction()
    State.Move.A = 0
end

function AKeyHoldAction()
    State.Move.A = -1
end

function SKeyUnHoldAction()
    State.Move.S = 0
end

function SKeyHoldAction()
    State.Move.S = -1
end

function WKeyUnHoldAction()
    State.Move.W = 0
end

function WKeyHoldAction()
    State.Move.W = 1
end

function MoveKey()
    TimerStart(CreateTimer(), 0.02, true, Move)
    Trigger.WKeyHold = CreateTrigger()
    for i = 0, 15 do
        BlzTriggerRegisterPlayerKeyEvent(Trigger.WKeyHold, Player(0), OSKEY_W, i, true)
    end
    TriggerAddAction(Trigger.WKeyHold, WKeyHoldAction)
    Trigger.WKeyUnHold = CreateTrigger()
    for i = 0, 15 do
        BlzTriggerRegisterPlayerKeyEvent(Trigger.WKeyUnHold, Player(0), OSKEY_W, i, false)
    end
    TriggerAddAction(Trigger.WKeyUnHold, WKeyUnHoldAction)
    Trigger.SKeyHold = CreateTrigger()
    for i = 0, 15 do
        BlzTriggerRegisterPlayerKeyEvent(Trigger.SKeyHold, Player(0), OSKEY_S, i, true)
    end
    TriggerAddAction(Trigger.SKeyHold, SKeyHoldAction)
    Trigger.SKeyUnHold = CreateTrigger()
    for i = 0, 15 do
        BlzTriggerRegisterPlayerKeyEvent(Trigger.SKeyUnHold, Player(0), OSKEY_S, i, false)
    end
    TriggerAddAction(Trigger.SKeyUnHold, SKeyUnHoldAction)
    Trigger.AKeyHold = CreateTrigger()
    for i = 0, 15 do
        BlzTriggerRegisterPlayerKeyEvent(Trigger.AKeyHold, Player(0), OSKEY_A, i, true)
    end
    TriggerAddAction(Trigger.AKeyHold, AKeyHoldAction)
    Trigger.AKeyUnHold = CreateTrigger()
    for i = 0, 15 do
        BlzTriggerRegisterPlayerKeyEvent(Trigger.AKeyUnHold, Player(0), OSKEY_A, i, false)
    end
    TriggerAddAction(Trigger.AKeyUnHold, AKeyUnHoldAction)
    Trigger.DKeyHold = CreateTrigger()
    for i = 0, 15 do
        BlzTriggerRegisterPlayerKeyEvent(Trigger.DKeyHold, Player(0), OSKEY_D, i, true)
    end
    TriggerAddAction(Trigger.DKeyHold, DKeyHoldAction)
    Trigger.DKeyUnHold = CreateTrigger()
    for i = 0, 15 do
        BlzTriggerRegisterPlayerKeyEvent(Trigger.DKeyUnHold, Player(0), OSKEY_D, i, false)
    end
    TriggerAddAction(Trigger.DKeyUnHold, DKeyUnHoldAction)
    Trigger.ShiftKeyHold = CreateTrigger()
    BlzTriggerRegisterPlayerKeyEvent(Trigger.ShiftKeyHold, Player(0), OSKEY_LSHIFT, 1, true)
    TriggerAddAction(Trigger.ShiftKeyHold, ShiftKeyHoldAction)
    Trigger.ShiftKeyUnHold = CreateTrigger()
    BlzTriggerRegisterPlayerKeyEvent(Trigger.ShiftKeyUnHold, Player(0), OSKEY_LSHIFT, 0, false)
    TriggerAddAction(Trigger.ShiftKeyUnHold, ShiftKeyUnHoldAction)
    Trigger.AltKeyHold = CreateTrigger()
    BlzTriggerRegisterPlayerKeyEvent(Trigger.AltKeyHold, Player(0), OSKEY_LALT, 4, true)
    BlzTriggerRegisterPlayerKeyEvent(Trigger.AltKeyHold, Player(0), OSKEY_LALT, 5, true)
    TriggerAddAction(Trigger.AltKeyHold, AltKeyAction)
end
--CUSTOM_CODE
function Trig_Timer_Actions()
    SelectUnitForPlayerSingle(gg_unit_z000_0000, Player(0))
    SetCameraFieldForPlayer(Player(0), CAMERA_FIELD_TARGET_DISTANCE, 2000.00, 0)
    SetCameraFieldForPlayer(Player(0), CAMERA_FIELD_ANGLE_OF_ATTACK, 270.00, 0)
    SetCameraTargetControllerNoZForPlayer(Player(0), gg_unit_z000_0000, 0, 200.00, false)
end

function InitTrig_Timer()
    gg_trg_Timer = CreateTrigger()
    TriggerRegisterTimerEventPeriodic(gg_trg_Timer, 0.01)
    TriggerAddAction(gg_trg_Timer, Trig_Timer_Actions)
end

function Trig_Init_Actions()
        Start()
    CreateFogModifierRectBJ(true, Player(0), FOG_OF_WAR_VISIBLE, GetPlayableMapRect())
end

function InitTrig_Init()
    gg_trg_Init = CreateTrigger()
    TriggerAddAction(gg_trg_Init, Trig_Init_Actions)
end

function InitCustomTriggers()
    InitTrig_Timer()
    InitTrig_Init()
end

function RunInitializationTriggers()
    ConditionalTriggerExecute(gg_trg_Init)
end

function InitCustomPlayerSlots()
    SetPlayerStartLocation(Player(0), 0)
    SetPlayerColor(Player(0), ConvertPlayerColor(0))
    SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(0), true)
    SetPlayerController(Player(0), MAP_CONTROL_USER)
end

function InitCustomTeams()
    SetPlayerTeam(Player(0), 0)
end

function main()
    SetCameraBounds(-3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    NewSoundEnvironment("Default")
    SetAmbientDaySound("LordaeronSummerDay")
    SetAmbientNightSound("LordaeronSummerNight")
    SetMapMusic("Music", true, 0)
    CreateAllUnits()
    InitBlizzard()
    InitGlobals()
    InitCustomTriggers()
    RunInitializationTriggers()
end

function config()
    SetMapName("TRIGSTR_003")
    SetMapDescription("TRIGSTR_005")
    SetPlayers(1)
    SetTeams(1)
    SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)
    DefineStartLocation(0, -768.0, -2240.0)
    InitCustomPlayerSlots()
    SetPlayerSlotAvailable(Player(0), MAP_CONTROL_USER)
    InitGenericPlayerSlots()
end

