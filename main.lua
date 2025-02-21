BasicHUDMod = {}

-- Called when the map loads
function BasicHUDMod:loadMap(name)
    print("BasicHUDMod loaded")
    -- Create an instance of our BasicHUD
    self.hud = BasicHUD:new(g_currentMission.modDirectory)
end

-- Called every frame to draw the HUD element
function BasicHUDMod:draw()
    if self.hud then
        self.hud:drawHUD()
    end
end

-- Called when the map is unloaded
function BasicHUDMod:deleteMap()
    if self.hud then
        self.hud:delete()
    end
end

-- Register event listeners so the functions get called
addModEventListener(BasicHUDMod)
