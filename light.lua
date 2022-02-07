--[[
Light sources can be of several different types and configured in the editor.
If a light source is owned by a shape, the intensity of the light source is scaled by the emissive scale of that shape.
If the parent shape breaks, the emissive scale is set to zero and the light source is disabled.
A light source without a parent shape will always emit light, unless explicitly disabled by a script.
]]

---@param tag string Tag name
---@param global boolean _optional_ Search in entire scene
---@return number Handle to first light with specified tag or zero if not found
---@see @https://www.teardowngame.com/modding/api.html#FindLight
function FindLight(tag, global) end

---@param tag string Tag name
---@param global boolean _optional_ Search in entire scene
---@return table<number, number> Indexed table with handles to all lights with specified tag
---@see @https://www.teardowngame.com/modding/api.html#FindLights
function FindLights(tag, global) end

---@param handle number Light handle
---@param enabled boolean Set to true if light should be enabled
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetLightEnabled
function SetLightEnabled(handle, enabled) end

---@param handle number Light handle
---@param r number Red value
---@param g number Green value
---@param b number Blue value
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetLightColor
function SetLightColor(handle, r, g, b) end

---@param handle number Light handle
---@param intensity number Desired intensity of the light
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetLightIntensity
function SetLightIntensity(handle, intensity) end

---@param handle number Light handle
---@return Transform World space light transform
---@see @https://www.teardowngame.com/modding/api.html#GetLightTransform
function GetLightTransform(handle) end

---@param handle number Light handle
---@return number Shape handle or zero if not attached to shape
---@see @https://www.teardowngame.com/modding/api.html#GetLightShape
function GetLightShape(handle) end

---@param handle number Light handle
---@return boolean True if light is currently emitting light
---@see @https://www.teardowngame.com/modding/api.html#IsLightActive
function IsLightActive(handle) end

---@param handle number Light handle
---@param point Vector World space point as vector
---@return boolean Return true if point is in light cone and range
---@see @https://www.teardowngame.com/modding/api.html#IsPointAffectedByLight
function IsPointAffectedByLight(handle, point) end
