--[[
Scripts can have parameters defined in the level XML file.
These serve as input to a specific instance of the script and can be used to configure various options and parameters of the script.
While these parameters can be read at any time in the script, it's recommended to copy them to a global variable in or outside the init function.
]]

---@param name string Parameter name
---@param default number Default parameter value
---@return number Parameter value
---@see @https://www.teardowngame.com/modding/api.html#GetIntParam
function GetIntParam(name, default) end

---@param name string Parameter name
---@param default number Default parameter value
---@return number Parameter value
---@see @https://www.teardowngame.com/modding/api.html#GetFloatParam
function GetFloatParam(name, default) end

---@param name string Parameter name
---@param default boolean Default parameter value
---@return boolean Parameter value
---@see @https://www.teardowngame.com/modding/api.html#GetBoolParam
function GetBoolParam(name, default) end

---@param name string Parameter name
---@param default string Default parameter value
---@return string Parameter value
---@see @https://www.teardowngame.com/modding/api.html#GetStringParam
function GetStringParam(name, default) end
