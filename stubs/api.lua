--[[
Teardown scripting

Teardown uses Lua version 5.1 as scripting language.
The Lua 5.1 reference manual can be found here. @https://www.lua.org/manual/5.1/
Each Teardown script runs in its own Lua context and can only interact with the engine and other scripts through API functions and the registry.
The registry is a database of hierarchical global variables that is used both internally in the engine, for communication between scripts and as a way to save persistent data.

Function => Description
init(): Called once at load time
tick(dt): Called exactly once per frame. The time step is variable but always between 0.0 and 0.0333333
update(dt): Called at a fixed update rate, but at the most two times per frame. Time step is always 0.0166667 (60 updates per second). Depending on frame rate it might not be called at all for a particular frame.
draw(): Called when the 2D overlay is being draw, after the scene but before the standard HUD. Ui functions can only be used from this callback.
]]

--[[
Miscellaneous
Functions of peripheral nature that doesn't fit in anywhere else
]]

---@param origin Vector Origin in world space as vector
---@param direction Vector Unit length direction as world space vector
---@param type number _optional_ 0 is regular bullet (default) and 1 is rocket
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#Shoot
function Shoot(origin, direction, type) end

---@param pos Vector Hole center point
---@param r0 number Hole radius for soft materials
---@param r1 number _optional_ Hole radius for medium materials. May not be bigger than r0. Default zero.
---@param r2 number _optional_ Hole radius for hard materials. May not be bigger than r1. Default zero.
---@param silent boolean _optional_ Make hole without playing any break sounds.
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#MakeHole
function MakeHole(pos, r0, r1, r2, silent) end

---@param pos Vector Position in world space as vector
---@param size number Explosion size from 0.5 to 4.0
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#Explosion
function Explosion(pos, size) end

---@param pos Vector Position in world space as vector
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SpawnFire
function SpawnFire(pos) end

---@return number Number of active fires in level
---@see @https://www.teardowngame.com/modding/api.html#GetFireCount
function GetFireCount() end

---@param origin Vector World space position as vector
---@param maxDist number Maximum search distance
---@return boolean, Vector A fire was found within search distance, Position of closest fire
---@see @https://www.teardowngame.com/modding/api.html#QueryClosestFire
function QueryClosestFire(origin, maxDist) end

---@param min Vector Aabb minimum point
---@param max Vector Aabb maximum point
---@return number Number of active fires in bounding box
---@see @https://www.teardowngame.com/modding/api.html#QueryAabbFireCount
function QueryAabbFireCount(min, max) end

---@param min Vector Aabb minimum point
---@param max Vector Aabb maximum point
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#RemoveAabbFires
function RemoveAabbFires(min, max) end

---@return Transform Current camera transform
---@see @https://www.teardowngame.com/modding/api.html#GetCameraTransform
function GetCameraTransform() end

---@param transform Transform Desired camera transform
---@param fov number _optional_ Optional horizontal field of view in degrees (default: 90)
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#GetCameraTransform
function GetCameraTransform(transform, fov) end

---@param degrees number Horizontal field of view in degrees (10-170)
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetCameraFov
function SetCameraFov(degrees) end

---@param distance number Depth of field distance
---@param amount number _optional_ Optional amount of blur (default 1.0)
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetCameraFov
function SetCameraFov(distance, amount) end

---@param pos Vector World space light position
---@param r number Red
---@param g number Green
---@param b number Blue
---@param intensity number _optional_ Intensity. Default is 1.0.
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#PointLight
function PointLight(pos, r, g, b, intensity) end

---@param scale number Time scale 0.1 to 1.0
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetTimeScale
function SetTimeScale(scale) end

---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetEnvironmentDefault
function SetEnvironmentDefault() end

---@param name string Property name
---@param value0 any Property value (type depends on property)
---@param value1 any _optional_ Extra property value (only some properties)
---@param value2 any _optional_ Extra property value (only some properties)
---@param value3 any _optional_ Extra property value (only some properties)
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetEnvironmentProperty
function SetEnvironmentProperty(name, value0, value1, value2, value3) end

---@param name string Property name
---@return any, any, any, any, any Property values (type depends on property)
---@see @https://www.teardowngame.com/modding/api.html#GetEnvironmentProperty
function GetEnvironmentProperty(name) end

---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetPostProcessingDefault
function SetPostProcessingDefault() end

---@param name string Property name
---@param value0 number Property value
---@param value1 number _optional_ Extra property value (only some properties)
---@param value2 number _optional_ Extra property value (only some properties)
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetPostProcessingProperty
function SetPostProcessingProperty(name, value0, value1, value2, value3) end

---@param name string Property name
---@return number, number, number Property values
---@see @https://www.teardowngame.com/modding/api.html#GetPostProcessingProperty
function GetPostProcessingProperty(name) end

---@param p0 Vector World space point as vector
---@param p1 Vector World space point as vector
---@param r number _optional_ Red
---@param g number _optional_ Green
---@param b number _optional_ Blue
---@param a number _optional_ Alpha
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#DrawLine
function DrawLine(p0, p1, r, g, b, a) end

---@param p0 Vector World space point as vector
---@param p1 Vector World space point as vector
---@param r number _optional_ Red
---@param g number _optional_ Green
---@param b number _optional_ Blue
---@param a number _optional_ Alpha
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#DebugLine
function DebugLine(p0, p1, r, g, b, a) end

---@param p0 Vector World space point as vector
---@param r number _optional_ Red
---@param g number _optional_ Green
---@param b number _optional_ Blue
---@param a number _optional_ Alpha
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#DebugCross
function DebugCross(p0, r, g, b, a) end

---@param name string
---@param value string
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#DebugWatch
function DebugWatch(name, value) end

---@param message string
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#DebugPrint
function DebugPrint(message) end
