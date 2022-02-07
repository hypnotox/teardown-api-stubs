--[[
An Entity is the basis of most objects in the Teardown engine (bodies, shapes, lights, locations, etc).
All entities can have tags, which is a way to store custom properties on entities for scripting purposes.
Some tags are also reserved for engine use. See documentation for details.
]]

---@param handle number Entity handle
---@param tag string Tag name
---@param value string _optional_ Tag value
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetTag
function SetTag(handle, tag, value) end

---@param handle number Entity handle
---@param tag string Tag name
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#RemoveTag
function RemoveTag(handle, tag) end

---@param handle number Entity handle
---@param tag string Tag name
---@return boolean Returns true if entity has tag
---@see @https://www.teardowngame.com/modding/api.html#HasTag
function HasTag(handle, tag) end

---@param handle number Entity handle
---@param tag string Tag name
---@return string Returns the tag value, if any. Empty string otherwise.
---@see @https://www.teardowngame.com/modding/api.html#GetTagValue
function GetTagValue(handle, tag) end

---@param handle number Entity handle
---@return string The description string
---@see @https://www.teardowngame.com/modding/api.html#GetDescription
function GetDescription(handle) end

---@param handle number Entity handle
---@param description string The description string
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetDescription
function SetDescription(handle, description) end

---@param handle number Entity handle
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#Delete
function Delete(handle) end

---@param handle number Entity handle
---@return boolean Returns true if the entity pointed to by handle still exists
---@see @https://www.teardowngame.com/modding/api.html#IsHandleValid
function IsHandleValid(handle) end
