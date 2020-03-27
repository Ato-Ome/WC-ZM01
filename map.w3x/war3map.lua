gg_trg_Melee_Initialization = nil
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
MouseX = 0
MouseY = 0
Bullets = 10000
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
--CUSTOM_CODE
function Trig_Melee_Initialization_Actions()
    SelectUnitForPlayerSingle(gg_unit_z000_0000, Player(0))
    SetCameraFieldForPlayer(Player(0), CAMERA_FIELD_TARGET_DISTANCE, 2000.00, 0)
    SetCameraFieldForPlayer(Player(0), CAMERA_FIELD_ANGLE_OF_ATTACK, 270.00, 0)
    SetCameraTargetControllerNoZForPlayer(Player(0), gg_unit_z000_0000, 0, 200.00, false)
end

function InitTrig_Melee_Initialization()
    gg_trg_Melee_Initialization = CreateTrigger()
    TriggerRegisterTimerEventPeriodic(gg_trg_Melee_Initialization, 0.01)
    TriggerAddAction(gg_trg_Melee_Initialization, Trig_Melee_Initialization_Actions)
end

function Trig_Init_Actions()
        LeftMouse()
    CreateFogModifierRectBJ(true, Player(0), FOG_OF_WAR_VISIBLE, GetPlayableMapRect())
end

function InitTrig_Init()
    gg_trg_Init = CreateTrigger()
    TriggerAddAction(gg_trg_Init, Trig_Init_Actions)
end

function InitCustomTriggers()
    InitTrig_Melee_Initialization()
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

