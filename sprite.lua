--[[
Sprites are 2D images in PNG or JPG format that can be drawn into the world.
Sprites can be drawn with ot without depth test (occluded by geometry).
Sprites will not be affected by lighting but they will go through post processing.
If you want to display positioned information to the player as an overlay, you probably want to use the Ui functions in combination with UiWorldToPixel instead.
]]

---@param path string Path to sprite. Must be PNG or JPG format.
---@return number Sprite handle
---@see @https://www.teardowngame.com/modding/api.html#LoadSprite
function LoadSprite(path) end

---@param handle number Sprite handle
---@param transform Transform
---@param width number Width in meters
---@param height number Height in meters
---@param r number _optional_ Red color. Default 1.0.
---@param g number _optional_ Green color. Default 1.0.
---@param b number _optional_ Blue color. Default 1.0.
---@param a number _optional_ Alpha. Default 1.0.
---@param depthTest boolean _optional_ Depth test enabled. Default false.
---@param additive boolean _optional_ Additive blending enabled. Default false.
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#DrawSprite
function DrawSprite(handle, transform, width, height, r, g, b, a, depthTest, additive) end
