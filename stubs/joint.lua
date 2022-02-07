--[[
Joints are used to physically connect two shapes.
There are several types of joints and they are typically placed in the editor.
When destruction occurs, joints may be transferred to new shapes, detached or completely disabled.
]]

---@alias JointType "'ball'"|"'hinge'"|"'prismatic'"|"'rope'"|"''"

---@param tag string Tag name
---@param global boolean _optional_ Search in entire scene
---@return number Handle to first joint with specified tag or zero if not found
---@see @https://www.teardowngame.com/modding/api.html#FindJoint
function FindJoint(tag, global) end

---@param tag string Tag name
---@param global boolean _optional_ Search in entire scene
---@return table<number, number> Indexed table with handles to all joints with specified tag
---@see @https://www.teardowngame.com/modding/api.html#FindJoints
function FindJoints(tag, global) end

---@param joint number Joint handle
---@return boolean Return true if joint is broken
---@see @https://www.teardowngame.com/modding/api.html#IsJointBroken
function IsJointBroken(joint) end

---@param joint number Joint handle
---@return JointType Joint type
---@see @https://www.teardowngame.com/modding/api.html#GetJointType
function GetJointType(joint) end

---@param joint number Joint handle
---@param shape number Shape handle
---@return number Other shape handle
---@see @https://www.teardowngame.com/modding/api.html#GetJointOtherShape
function GetJointOtherShape(joint, shape) end

---@param joint number Joint handle
---@param velocity number Desired velocity
---@param strength number _optional_ Desired strength. Default is infinite. Zero to disable.
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetJointMotor
function SetJointMotor(joint, velocity, strength) end

---@param joint number Joint handle
---@param target number Desired movement target
---@param maxVel number _optional_ Maximum velocity to reach target. Default is infinite.
---@param strength number _optional_ Desired strength. Default is infinite. Zero to disable.
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetJointMotorTarget
function SetJointMotorTarget(joint, target, maxVel, strength) end

---@param joint number Joint handle
---@return number, number Minimum joint limit (angle or distance), Maximum joint limit (angle or distance)
---@see @https://www.teardowngame.com/modding/api.html#GetJointLimits
function GetJointLimits(joint) end

---@param joint number Joint handle
---@return number Current joint position or angle
---@see @https://www.teardowngame.com/modding/api.html#GetJointMovement
function GetJointMovement(joint) end

---@param body number Body handle (must be dynamic)
---@return table<number, number> Handles to all dynamic bodies in the jointed structure. The input handle will also be included.
---@see @https://www.teardowngame.com/modding/api.html#GetJointedBodies
function GetJointedBodies(body) end

---@param joint number Joint handle
---@param shape number Shape handle
---@return table<number, number> Handles to all dynamic bodies in the jointed structure. The input handle will also be included.
---@see @https://www.teardowngame.com/modding/api.html#DetachJointFromShape
function DetachJointFromShape(joint, shape) end
