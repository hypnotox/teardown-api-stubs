--[[
Query the level in various ways.

Layer -> Description
physical: have a physical representation
dynamic: part of a dynamic body
static: part of a static body
large: above debris threshold
small: below debris threshold

State -> Description
idle: No recent query
busy: Busy computing. No path found yet.
fail: Failed to find path. You can still get the resulting path (even though it won't reach the target).
done: Path planning completed and a path was found. Get it with GetPathLength and GetPathPoint)
]]

---@param layers string Space separate list of layers
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#QueryRequire
function QueryRequire(layers) end

---@param vehicle number Vehicle handle
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#QueryRejectVehicle
function QueryRejectVehicle(vehicle) end

---@param body number Body handle
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#QueryRejectBody
function QueryRejectBody(body) end

---@param shape number Shape handle
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#QueryRejectShape
function QueryRejectShape(shape) end

---@param origin Vector Raycast origin as world space vector
---@param direction Vector Unit length raycast direction as world space vector
---@param maxDist number Raycast maximum distance. Keep this as low as possible for good performance.
---@param radius number _optional_ Raycast thickness. Default zero.
---@param rejectTransparent boolean _optional_ Raycast through transparent materials. Default false.
---@return boolean, number, Vector, number True if raycast hit something, Hit distance from origin, World space normal at hit point, Handle to hit shape
---@see @https://www.teardowngame.com/modding/api.html#QueryRaycast
function QueryRaycast(origin, direction, maxDist, radius, rejectTransparent) end

---@param origin Vector World space point
---@param maxDist number Maximum distance. Keep this as low as possible for good performance.
---@return boolean, Vector, Vector, number True if a point was found, World space closest point, World space normal at closest point, Handle to closest shape
---@see @https://www.teardowngame.com/modding/api.html#QueryClosestPoint
function QueryClosestPoint(origin, maxDist) end

---@param min Vector Aabb minimum point
---@param max Vector Aabb maximum point
---@return table<number, number> Indexed table with handles to all shapes in the aabb
---@see @https://www.teardowngame.com/modding/api.html#QueryAabbShapes
function QueryAabbShapes(min, max) end

---@param min Vector Aabb minimum point
---@param max Vector Aabb maximum point
---@return table<number, number> Indexed table with handles to all bodies in the aabb
---@see @https://www.teardowngame.com/modding/api.html#QueryAabbBodies
function QueryAabbBodies(min, max) end

---@param startPoint Vector World space start point
---@param endPoint Vector World space target point
---@param maxDist number _optional_ Maximum path length before giving up. Default is infinite.
---@param targetRadius number _optional_ Maximum allowed distance to target in meters. Default is 2.0
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#QueryPath
function QueryPath(startPoint, endPoint, maxDist, targetRadius) end

---@return nil
---@see @https://www.teardowngame.com/modding/api.html#AbortPath
function AbortPath() end

---@return string Current path planning state
---@see @https://www.teardowngame.com/modding/api.html#GetPathState
function GetPathState() end

---@return number Length of last path planning result (in meters)
---@see @https://www.teardowngame.com/modding/api.html#GetPathLength
function GetPathLength() end

---@param distance number The distance along path. Should be between zero and result from GetPathLength()
---@return Vector The path point dist meters along the path
---@see @https://www.teardowngame.com/modding/api.html#GetPathPoint
function GetPathPoint(distance) end

---@return number, Vector Volume of loudest sound played last frame, World position of loudest sound played last frame
---@see @https://www.teardowngame.com/modding/api.html#GetLastSound
function GetLastSound() end

---@param point Vector World point as vector
---@return boolean, number True if point is in water, Depth of point into water, or zero if not in water
---@see @https://www.teardowngame.com/modding/api.html#IsPointInWater
function IsPointInWater(point) end

---@param point Vector World point as vector
---@return Vector Wind at provided position
---@see @https://www.teardowngame.com/modding/api.html#IsPointInWater
function GetWindVelocity(point) end
