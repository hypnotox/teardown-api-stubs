--[[
Vector math is used in Teardown scripts to represent 3D positions, directions, rotations and transforms.
The base types are vectors, quaternions and transforms.
Vectors and quaternions are indexed tables with three and four components.
Transforms are tables consisting of one vector (pos) and one quaternion (rot)
]]

---@class Vector:table
---@see @https://www.teardowngame.com/modding/api.html#Vec
local defaultVec = {0, 0, 0}

---@class Quaternion:table
---@see @https://www.teardowngame.com/modding/api.html#Quat
local defaultQuat = {0, 0, 0, 0}

---@class Transform:table
---@field pos Vector Vector representing transform position
---@field rot Quaternion Quaternion representing transform rotation
---@see @https://www.teardowngame.com/modding/api.html#Transform
local defaultTr = {
    pos = Vec(),
    rot = Quat(),
}

---@param x number _optional_
---@param y number _optional_
---@param z number _optional_
---@return Vector New vector
---@see @https://www.teardowngame.com/modding/api.html#Vec
function Vec(x, y, z) end

---@param vec Vector
---@return Vector Copy of org vector
---@see @https://www.teardowngame.com/modding/api.html#VecCopy
function VecCopy(vec) end

---@param vec Vector
---@return number Length (magnitude) of the vector
---@see @https://www.teardowngame.com/modding/api.html#VecLength
function VecLength(vec) end

---@param vec Vector
---@return Vector A vector of length 1.0
---@see @https://www.teardowngame.com/modding/api.html#VecNormalize
function VecNormalize(vec) end

---@param vec Vector A vector
---@param scale number A scale factor
---@return Vector A scaled version of input vector
---@see @https://www.teardowngame.com/modding/api.html#VecScale
function VecScale(vec, scale) end

---@param a Vector
---@param b Vector
---@return Vector New vector with sum of a and b
---@see @https://www.teardowngame.com/modding/api.html#VecAdd
function VecAdd(a, b) end

---@param a Vector
---@param b Vector
---@return Vector New vector representing a-b
---@see @https://www.teardowngame.com/modding/api.html#VecSub
function VecSub(a, b) end

---@param a Vector
---@param b Vector
---@return Vector Dot product of a and b
---@see @https://www.teardowngame.com/modding/api.html#VecDot
function VecDot(a, b) end

---@param a Vector
---@param b Vector
---@return Vector Cross product of a and b (also called vector product)
---@see @https://www.teardowngame.com/modding/api.html#VecCross
function VecCross(a, b) end

---@param a Vector
---@param b Vector
---@param t number fraction (usually between 0.0 and 1.0)
---@return Vector Linearly interpolated vector between a and b, using t
---@see @https://www.teardowngame.com/modding/api.html#VecLerp
function VecLerp(a, b, t) end

---@param x number _optional_
---@param y number _optional_
---@param z number _optional_
---@param w number _optional_
---@return Quaternion New quaternion
---@see @https://www.teardowngame.com/modding/api.html#Quat
function Quat(x, y, z, w) end

---@param quaternion Quaternion
---@return Quaternion Copy of original quaternion
---@see @https://www.teardowngame.com/modding/api.html#QuatCopy
function QuatCopy(quaternion) end

---@param axis Vector Rotation axis, unit vector
---@param angle number Rotation angle in degrees
---@return Quaternion New quaternion
---@see @https://www.teardowngame.com/modding/api.html#QuatAxisAngle
function QuatAxisAngle(axis, angle) end

---@param x number Angle around X axis in degrees, sometimes also called roll or bank
---@param y number Angle around Y axis in degrees, sometimes also called yaw or heading
---@param z number Angle around Z axis in degrees, sometimes also called pitch or attitude
---@return Quaternion New quaternion
---@see @https://www.teardowngame.com/modding/api.html#QuatEuler
function QuatEuler(x, y, z) end

---@param quaternion Quaternion New quaternion
---@return number, number, number Angle around X, Angle around Y, Angle around Z
---@see @https://www.teardowngame.com/modding/api.html#GetQuatEuler
function GetQuatEuler(quaternion) end

---@param eye Vector Vector representing the camera location
---@param target Vector Vector representing the point to look at
---@return Quaternion New quaternion
---@see @https://www.teardowngame.com/modding/api.html#QuatLookAt
function QuatLookAt(eye, target) end

---@param a Quaternion Angle around X axis in degrees, sometimes also called roll or bank
---@param b Quaternion Angle around Y axis in degrees, sometimes also called yaw or heading
---@param t number fraction (usually between 0.0 and 1.0)
---@return Quaternion New quaternion
---@see @https://www.teardowngame.com/modding/api.html#QuatSlerp
function QuatSlerp(a, b, t) end

---@param a Quaternion
---@param b Quaternion
---@return Quaternion New quaternion
---@see @https://www.teardowngame.com/modding/api.html#QuatRotateQuat
function QuatRotateQuat(a, b) end

---@param a Quaternion
---@param vec Vector
---@return Vector Rotated vector
---@see @https://www.teardowngame.com/modding/api.html#QuatRotateVec
function QuatRotateVec(a, vec) end

---@param pos Vector _optional_
---@param rotation Quaternion _optional_
---@return Transform New transform
---@see @https://www.teardowngame.com/modding/api.html#Transform
function Transform(pos, rotation) end

---@param transform Transform
---@return Transform Copy of original transform
---@see @https://www.teardowngame.com/modding/api.html#TransformCopy
function TransformCopy(transform) end

---@param parent Transform
---@param child Transform
---@return Transform New transform
---@see @https://www.teardowngame.com/modding/api.html#TransformToParentTransform
function TransformToParentTransform(parent, child) end

---@param parent Transform
---@param child Transform
---@return Transform New transform
---@see @https://www.teardowngame.com/modding/api.html#TransformToLocalTransform
function TransformToLocalTransform(parent, child) end

---@param parent Transform
---@param vec Vector
---@return Vector Transformed vector
---@see @https://www.teardowngame.com/modding/api.html#TransformToParentVec
function TransformToParentVec(parent, vec) end

---@param parent Transform
---@param vec Vector
---@return Vector Transformed vector
---@see @https://www.teardowngame.com/modding/api.html#TransformToLocalVec
function TransformToLocalVec(parent, vec) end

---@param parent Transform
---@param pos Vector Vector representing position
---@return Vector Transformed position
---@see @https://www.teardowngame.com/modding/api.html#TransformToParentPoint
function TransformToParentPoint(parent, pos) end

---@param parent Transform
---@param pos Vector Vector representing position
---@return Vector Transformed position
---@see @https://www.teardowngame.com/modding/api.html#TransformToLocalPoint
function TransformToLocalPoint(parent, pos) end
