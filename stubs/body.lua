--[[
A body represents a rigid body in the scene.
It can be either static or dynamic.
Only dynamic bodies are affected by physics.
]]

---@param tag string Tag name
---@param global boolean _optional_ Search in entire scene
---@return number Handle to first body with specified tag or zero if not found
---@see @https://www.teardowngame.com/modding/api.html#FindBody
function FindBody(tag, global) end

---@param tag string Tag name
---@param global boolean _optional_ Search in entire scene
---@return table<number, number> Indexed table with handles to all bodies with specified tag
---@see @https://www.teardowngame.com/modding/api.html#FindBodies
function FindBodies(tag, global) end

---@param handle number Body handle
---@return Transform Transform of the body
---@see @https://www.teardowngame.com/modding/api.html#GetBodyTransform
function GetBodyTransform(handle) end

---@param handle number Body handle
---@param transform Transform Desired transform
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetBodyTransform
function SetBodyTransform(handle, transform) end

---@param handle number Body handle
---@return number Body mass. Static bodies always return zero mass.
---@see @https://www.teardowngame.com/modding/api.html#GetBodyMass
function GetBodyMass(handle) end

---@param handle number Body handle
---@return boolean Return true if body is dynamic
---@see @https://www.teardowngame.com/modding/api.html#IsBodyDynamic
function IsBodyDynamic(handle) end

---@param handle number Body handle (should be a dynamic body)
---@param vec Vector Vector with linear velocity
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetBodyVelocity
function SetBodyVelocity(handle, vec) end

---@param handle number Body handle (should be a dynamic body)
---@return Vector Linear velocity as vector
---@see @https://www.teardowngame.com/modding/api.html#GetBodyVelocity
function GetBodyVelocity(handle) end

---@param handle number Body handle (should be a dynamic body)
---@param pos Vector World space point as vector
---@return Vector Linear velocity on body at pos as vector
---@see @https://www.teardowngame.com/modding/api.html#GetBodyVelocityAtPos
function GetBodyVelocityAtPos(handle, pos) end

---@param handle number Body handle (should be a dynamic body)
---@param angleVelocity Vector Vector with angular velocity
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetBodyAngularVelocity
function SetBodyAngularVelocity(handle, angleVelocity) end

---@param handle number Body handle (should be a dynamic body)
---@return Vector Angular velocity as vector
---@see @https://www.teardowngame.com/modding/api.html#GetBodyAngularVelocity
function GetBodyAngularVelocity(handle) end

---@param handle number Body handle
---@return boolean Return true if body is active
---@see @https://www.teardowngame.com/modding/api.html#IsBodyActive
function IsBodyActive(handle) end

---@param handle number Body handle
---@param active boolean Set to true if body should be active (simulated)
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetBodyActive
function SetBodyActive(handle, active) end

---@param handle number Body handle (should be a dynamic body)
---@param pos Vector World space position as vector
---@param impulse Vector World space impulse as vector
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#ApplyBodyImpulse
function ApplyBodyImpulse(handle, pos, impulse) end

---@param handle number Body handle
---@return table<number, number> Indexed table of shape handles
---@see @https://www.teardowngame.com/modding/api.html#GetBodyShapes
function GetBodyShapes(handle) end

---@param handle number Body handle
---@return number Get parent vehicle for body, or zero if not part of vehicle
---@see @https://www.teardowngame.com/modding/api.html#GetBodyVehicle
function GetBodyVehicle(handle) end

---@param handle number Body handle
---@return number, number Vector representing the AABB lower bound, Vector representing the AABB upper bound
---@see @https://www.teardowngame.com/modding/api.html#GetBodyBounds
function GetBodyBounds(handle) end

---@param handle number Body handle
---@return Vector Vector representing local center of mass in body space
---@see @https://www.teardowngame.com/modding/api.html#GetBodyCenterOfMass
function GetBodyCenterOfMass(handle) end

---@param handle number Body handle
---@param maxDistance number Maximum visible distance
---@param rejectTransparent boolean _optional_ See through transparent materials. Default false.
---@return boolean Return true if body is visible
---@see @https://www.teardowngame.com/modding/api.html#IsBodyVisible
function IsBodyVisible(handle, maxDistance, rejectTransparent) end

---@param handle number Body handle
---@return boolean Return true if body is broken
---@see @https://www.teardowngame.com/modding/api.html#IsBodyBroken
function IsBodyBroken(handle) end

---@param handle number Body handle
---@return boolean Return true if body is in any way connected to a static body
---@see @https://www.teardowngame.com/modding/api.html#IsBodyJointedToStatic
function IsBodyJointedToStatic(handle) end

---@param handle number Body handle
---@param amount number Amount
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#DrawBodyOutline
function DrawBodyOutline(handle, amount) end

---@param body number Body handle
---@param origin Vector World space point
---@return boolean, Vector, Vector, number True if a point was found, World space closest point, World space normal at closest point, Handle to closest shape
---@see @https://www.teardowngame.com/modding/api.html#GetBodyClosestPoint
function GetBodyClosestPoint(body, origin) end

---@param bodyA number First body handle (zero for static)
---@param bodyB number Second body handle (zero for static)
---@param point Vector World space point
---@param dir Vector World space direction
---@param relVel number Desired relative velocity along the provided direction
---@param min number _optional_ Minimum impulse (default: -infinity)
---@param max number _optional_ Maximum impulse (default: infinity)
---@return boolean, Vector, Vector, number True if a point was found, World space closest point, World space normal at closest point, Handle to closest shape
---@see @https://www.teardowngame.com/modding/api.html#ConstrainVelocity
function ConstrainVelocity(bodyA, bodyB, point, dir, relVel, min, max) end

---@param bodyA number First body handle (zero for static)
---@param bodyB number Second body handle (zero for static)
---@param dir Vector World space direction
---@param relAngVel number Desired relative angular velocity along the provided direction
---@param min number _optional_ Minimum impulse (default: -infinity)
---@param max number _optional_ Maximum impulse (default: infinity)
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#ConstrainAngularVelocity
function ConstrainAngularVelocity(bodyA, bodyB, dir, relAngVel, min, max) end

---@param bodyA number First body handle (zero for static)
---@param bodyB number Second body handle (zero for static)
---@param pointA Vector World space point for first body
---@param pointB Vector World space point for second body
---@param maxVel number _optional_ Maximum relative velocity (default: infinite)
---@param maxImpulse number _optional_ Maximum impulse (default: infinite)
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#ConstrainPosition
function ConstrainPosition(bodyA, bodyB, pointA, pointB, maxVel, maxImpulse) end

---@param bodyA number First body handle (zero for static)
---@param bodyB number Second body handle (zero for static)
---@param quatA Vector World space orientation for first body
---@param quatB Vector World space orientation for second body
---@param maxAngVel number _optional_ Maximum relative angular velocity (default: infinite)
---@param maxAngImpulse number _optional_ Maximum angular impulse (default: infinite)
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#ConstrainOrientation
function ConstrainOrientation(bodyA, bodyB, quatA, quatB, maxAngVel, maxAngImpulse) end
