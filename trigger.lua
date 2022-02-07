--[[
Triggers can be placed in the scene and queried by scripts to see if something is within a certain part of the scene.
]]

---@param tag string Tag name
---@param global boolean _optional_ Search in entire scene
---@return number Handle to first trigger with specified tag or zero if not found
---@see @https://www.teardowngame.com/modding/api.html#FindTrigger
function FindTrigger(tag, global) end

---@param tag string Tag name
---@param global boolean _optional_ Search in entire scene
---@return table<number, number> Indexed table with handles to all triggers with specified tag
---@see @https://www.teardowngame.com/modding/api.html#FindTriggers
function FindTriggers(tag, global) end

---@param handle number Trigger handle
---@return Transform Current trigger transform in world space
---@see @https://www.teardowngame.com/modding/api.html#GetTriggerTransform
function GetTriggerTransform(handle) end

---@param handle number Trigger handle
---@param transform Transform Desired trigger transform in world space
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetTriggerTransform
function SetTriggerTransform(handle, transform) end

---@param handle number Trigger handle
---@return number, number Lower point of trigger bounds in world space, Upper point of trigger bounds in world space
---@see @https://www.teardowngame.com/modding/api.html#GetTriggerBounds
function GetTriggerBounds(handle) end

---@param trigger number Trigger handle
---@param body number Body handle
---@return boolean True if body is in trigger volume
---@see @https://www.teardowngame.com/modding/api.html#IsBodyInTrigger
function IsBodyInTrigger(trigger, body) end

---@param trigger number Trigger handle
---@param vehicle number Vehicle handle
---@return boolean True if vehicle is in trigger volume
---@see @https://www.teardowngame.com/modding/api.html#IsVehicleInTrigger
function IsVehicleInTrigger(trigger, vehicle) end

---@param trigger number Trigger handle
---@param shape number Shape handle
---@return boolean True if shape is in trigger volume
---@see @https://www.teardowngame.com/modding/api.html#IsShapeInTrigger
function IsShapeInTrigger(trigger, shape) end

---@param trigger number Trigger handle
---@param point number Point handle
---@return boolean True if point is in trigger volume
---@see @https://www.teardowngame.com/modding/api.html#IsPointInTrigger
function IsPointInTrigger(trigger, point) end

---@param handle number Trigger handle
---@param demolition boolean _optional_ If true, small debris and vehicles are ignored
---@return boolean, Vector True if trigger is empty, World space point of highest point (largest Y coordinate) if not empty
---@see @https://www.teardowngame.com/modding/api.html#IsTriggerEmpty
function IsTriggerEmpty(handle, demolition) end

---@param trigger number Trigger handle
---@param point Vector Word space point as vector
---@return number Positive if point is outside, negative if inside
---@see @https://www.teardowngame.com/modding/api.html#GetTriggerDistance
function GetTriggerDistance(trigger, point) end

---@param trigger number Trigger handle
---@param point Vector Word space point as vector
---@return Vector Closest point in trigger as vector
---@see @https://www.teardowngame.com/modding/api.html#GetTriggerDistance
function GetTriggerClosestPoint(trigger, point) end
