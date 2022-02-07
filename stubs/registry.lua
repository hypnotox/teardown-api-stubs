--[[
The Teardown engine uses a global key/value-pair registry that scripts can read and write.
The engine exposes a lot of internal information through the registry, but it can also be used as way for scripts to communicate with each other.

The registry is a hierarchical node structure and can store a value in each node (parent nodes can also have a value).
The values can be of type floating point number, integer, boolean or string, but all types are automatically converted if another type is requested.
Some registry nodes are reserved and used for special purposes.

Key => Description
options: reserved for game settings (write protected from mods)
game: reserved for the game engine internals (see documentation)
savegame: used for persistent game data (write protected for mods)
savegame.mod: used for persistent mod data
level: not reserved, but recommended for level specific entries and script communication
]]

---@param key string Registry key to clear
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#ClearKey
function ClearKey(key) end

---@param parent string The parent registry key
---@return table<number, number> Indexed table of strings with child keys
---@see @https://www.teardowngame.com/modding/api.html#ListKeys
function ListKeys(parent) end

---@param key string Registry key
---@return boolean True if key exists
---@see @https://www.teardowngame.com/modding/api.html#HasKey
function HasKey(key) end

---@param key string Registry key
---@param value number Desired value
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetInt
function SetInt(key, value) end

---@param key string Registry key
---@return number Integer value of registry node or zero if not found
---@see @https://www.teardowngame.com/modding/api.html#GetInt
function GetInt(key) end

---@param key string Registry key
---@param value number Desired value
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetFloat
function SetFloat(key, value) end

---@param key string Registry key
---@return number Float value of registry node or zero if not found
---@see @https://www.teardowngame.com/modding/api.html#GetFloat
function GetFloat(key) end

---@param key string Registry key
---@param value boolean Desired value
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetBool
function SetBool(key, value) end

---@param key string Registry key
---@return boolean Boolean value of registry node or false if not found
---@see @https://www.teardowngame.com/modding/api.html#GetBool
function GetBool(key) end

---@param key string Registry key
---@param value string Desired value
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetBool
function SetString(key, value) end

---@param key string Registry key
---@return string String value of registry node or "" if not found
---@see @https://www.teardowngame.com/modding/api.html#GetBool
function GetString(key) end
