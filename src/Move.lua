function AltKeyAction()
    if Speed.Energy > Speed.EnergySpend * 20 then
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
    if not Speed.Run then
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
    if State.Move.W + State.Move.S ~= 0 or State.Move.A + State.Move.D ~= 0 then
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
                if not Missile.State.Fire then
                    local location = Location(x1 + x, y1 + y)
                    SetUnitFacingToFaceLocTimed(unit, location, 0)
                    RemoveLocation(location)
                    if State.Move.Animation <= 0 then
                        SetUnitAnimation(unit, "Walk")
                        State.Move.Animation = 0.4
                    end
                end
                SetUnitX(unit, x1 + x)
                SetUnitY(unit, y1 + y)
            end
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