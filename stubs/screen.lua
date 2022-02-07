--[[
Screens display the content of UI scripts and can be made interactive.
]]

---@param tag string Tag name
---@param global boolean _optional_ Search in entire scene
---@return number Handle to first screen with specified tag or zero if not found
---@see @https://www.teardowngame.com/modding/api.html#FindScreen
function FindScreen(tag, global) end

---@param tag string Tag name
---@param global boolean _optional_ Search in entire scene
---@return table<number, number> Indexed table with handles to all screens with specified tag
---@see @https://www.teardowngame.com/modding/api.html#FindScreens
function FindScreens(tag, global) end

---@param screen number Screen handle
---@param enabled boolean True if screen should be enabled
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetScreenEnabled
function SetScreenEnabled(screen, enabled) end

---@param screen number Screen handle
---@return boolean Return true if body is active
---@see @https://www.teardowngame.com/modding/api.html#IsScreenEnabled
function IsScreenEnabled(screen) end

---@param handle number Screen handle
---@return number Shape handle or zero if none
---@see @https://www.teardowngame.com/modding/api.html#GetScreenShape
function GetScreenShape(handle) end
