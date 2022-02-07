--[[
Locations are transforms placed in the editor as markers.
Location transforms are always expressed in world space coordinates.
]]

---@param tag string Tag name
---@param global boolean _optional_ Search in entire scene
---@return number Handle to first location with specified tag or zero if not found
---@see @https://www.teardowngame.com/modding/api.html#FindLocation
function FindLocation(tag, global) end

---@param tag string Tag name
---@param global boolean _optional_ Search in entire scene
---@return table<number, number> Indexed table with handles to all locations with specified tag
---@see @https://www.teardowngame.com/modding/api.html#FindLocations
function FindLocations(tag, global) end

---@param handle number Location handle
---@return Transform Transform of the location
---@see @https://www.teardowngame.com/modding/api.html#GetLocationTransform
function GetLocationTransform(handle) end
