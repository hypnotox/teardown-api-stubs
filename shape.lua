--[[
A shape is a voxel object and always owned by a body.
A single body may contain multiple shapes.
The transform of shape is expressed in the parent body coordinate system.
]]

---@param tag string Tag name
---@param global boolean _optional_ Search in entire scene
---@return number Handle to first shape with specified tag or zero if not found
---@see @https://www.teardowngame.com/modding/api.html#FindShape
function FindShape(tag, global) end

---@param tag string Tag name
---@param global boolean _optional_ Search in entire scene
---@return table<number, number> Indexed table with handles to all shapes with specified tag
---@see @https://www.teardowngame.com/modding/api.html#FindShapes
function FindShapes(tag, global) end

---@param handle number Shape handle
---@return Transform Return shape transform in body space
---@see @https://www.teardowngame.com/modding/api.html#GetShapeLocalTransform
function GetShapeLocalTransform(handle) end

---@param handle number Shape handle
---@param transform Transform Shape transform in body space
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetShapeLocalTransform
function SetShapeLocalTransform(handle, transform) end

---@param handle number Shape handle
---@return Transform Return shape transform in world space
---@see @https://www.teardowngame.com/modding/api.html#GetShapeWorldTransform
function GetShapeWorldTransform(handle) end

---@param handle number Shape handle
---@return number Body handle
---@see @https://www.teardowngame.com/modding/api.html#GetShapeBody
function GetShapeBody(handle) end

---@param handle number Shape handle
---@return table<number, number> Indexed table with joints connected to shape
---@see @https://www.teardowngame.com/modding/api.html#GetShapeJoints
function GetShapeJoints(handle) end

---@param handle number Shape handle
---@return table<number, number> Indexed table of lights owned by shape
---@see @https://www.teardowngame.com/modding/api.html#GetShapeLights
function GetShapeLights(handle) end

---@param handle number Shape handle
---@return number, number Vector representing the AABB lower bound, Vector representing the AABB upper bound
---@see @https://www.teardowngame.com/modding/api.html#GetShapeBounds
function GetShapeBounds(handle) end

---@param handle number Shape handle
---@param scale number Scale factor for emissiveness
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetShapeEmissiveScale
function SetShapeEmissiveScale(handle, scale) end

---@param handle number Shape handle
---@param pos Vector Position in world space
---@return string, number, number, number, number Material type, Red, Green, Blue, Alpha
---@see @https://www.teardowngame.com/modding/api.html#GetShapeMaterialAtPosition
function GetShapeMaterialAtPosition(handle, pos) end

---@param handle number Shape handle
---@param x number X integer coordinate
---@param y number Y integer coordinate
---@param z number Z integer coordinate
---@return string, number, number, number, number Material type, Red, Green, Blue, Alpha
---@see @https://www.teardowngame.com/modding/api.html#GetShapeMaterialAtIndex
function GetShapeMaterialAtIndex(handle, x, y, z) end

---@param handle number Shape handle
---@return number, number, number, number Size in voxels along x axis, Size in voxels along y axis, Size in voxels along z axis, The size of one voxel in meters (with default scale it is 0.1)
---@see @https://www.teardowngame.com/modding/api.html#GetShapeSize
function GetShapeSize(handle) end

---@param handle number Shape handle
---@return number Number of voxels in shape
---@see @https://www.teardowngame.com/modding/api.html#GetShapeVoxelCount
function GetShapeVoxelCount(handle) end

---@param handle number Shape handle
---@param maxDist number Maximum visible distance
---@param rejectTransparent boolean _optional_ See through transparent materials. Default false.
---@return boolean Return true if shape is visible
---@see @https://www.teardowngame.com/modding/api.html#IsShapeVisible
function IsShapeVisible(handle, maxDist, rejectTransparent) end

---@param handle number Shape handle
---@return boolean Return true if shape is broken
---@see @https://www.teardowngame.com/modding/api.html#IsShapeBroken
function IsShapeBroken(handle) end

---@param handle number Shape handle
---@param r number _optional_ Red
---@param g number _optional_ Green
---@param b number _optional_ Blue
---@param a number Alpha
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#DrawShapeOutline
function DrawShapeOutline(handle, r, g, b, a) end

---@param handle number Shape handle
---@param amount number Amount
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#DrawShapeHighlight
function DrawShapeHighlight(handle, amount) end

---@param handle number Shape handle
---@param layer number Layer bits (0-255)
---@param mask number Mask bits (0-255)
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetShapeCollisionFilter
function SetShapeCollisionFilter(handle, layer, mask) end

---@param shape number Shape handle
---@param origin Vector World space point
---@return boolean, Vector, Vector True if a point was found, World space closest point, World space normal at closest point
---@see @https://www.teardowngame.com/modding/api.html#GetShapeClosestPoint
function GetShapeClosestPoint(shape, origin) end
