BasicHUD = {}
local BasicHUD_mt = Class(BasicHUD)

-- Create a new HUD instance
function BasicHUD:new(modDirectory)
    local self = setmetatable({}, BasicHUD_mt)
    self.modDirectory = modDirectory
    self.text = "Hello HUD"
    return self
end

-- Draw the HUD text on screen
function BasicHUD:drawHUD()
    -- Center the text both horizontally and vertically
    setTextAlignment(RenderText.ALIGN_CENTER)
    setTextVerticalAlignment(RenderText.VERTICAL_ALIGN_MIDDLE)
    setTextBold(true)
    setTextColor(1, 1, 1, 1)  -- White color
    -- Render text at normalized screen coordinates (0.5, 0.5) for the center
    renderText(0.5, 0.5, 0.03, self.text)
    setTextBold(false)
end


-- Cleanup (if needed)
function BasicHUD:delete()
end

return BasicHUD
