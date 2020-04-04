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