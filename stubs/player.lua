--[[
The player functions expose certain information about the player.
]]

---@return Vector Player center position
---@see @https://www.teardowngame.com/modding/api.html#GetPlayerPos
function GetPlayerPos() end

---@param includePitch boolean Include the player pitch (look up/down) in transform
---@return Transform Current player transform
---@see @https://www.teardowngame.com/modding/api.html#GetPlayerTransform
function GetPlayerTransform(includePitch) end

---@param transform Transform Desired player transform
---@param includePitch boolean Set player pitch (look up/down) as well
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetPlayerTransform
function SetPlayerTransform(transform, includePitch) end

---@param velocity Vector Desired ground velocity
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetPlayerGroundVelocity
function SetPlayerGroundVelocity(velocity) end

---@return Transform Current player camera transform
---@see @https://www.teardowngame.com/modding/api.html#GetPlayerCameraTransform
function GetPlayerCameraTransform() end

---@param transform Transform Desired player spawn transform
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetPlayerSpawnTransform
function SetPlayerSpawnTransform(transform) end

---@return Vector Player velocity in world space as vector
---@see @https://www.teardowngame.com/modding/api.html#GetPlayerVelocity
function GetPlayerVelocity() end

---@param vehicle Transform Handle to vehicle or zero to not drive.
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetPlayerVehicle
function SetPlayerVehicle(vehicle) end

---@param velocity Vector Player velocity in world space as vector
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetPlayerVelocity
function SetPlayerVelocity(velocity) end

---@return number Current vehicle handle, or zero if not in vehicle
---@see @https://www.teardowngame.com/modding/api.html#GetPlayerVehicle
function GetPlayerVehicle() end

---@return number Handle to grabbed shape or zero if not grabbing.
---@see @https://www.teardowngame.com/modding/api.html#GetPlayerGrabShape
function GetPlayerGrabShape() end

---@return number Handle to grabbed body or zero if not grabbing.
---@see @https://www.teardowngame.com/modding/api.html#GetPlayerGrabShape
function GetPlayerGrabBody() end

---@return nil
---@see @https://www.teardowngame.com/modding/api.html#ReleasePlayerGrab
function ReleasePlayerGrab() end

---@return number Handle to picked shape or zero if nothing is picked
---@see @https://www.teardowngame.com/modding/api.html#ReleasePlayerGrab
function GetPlayerPickShape() end

---@return number Handle to picked body or zero if nothing is picked
---@see @https://www.teardowngame.com/modding/api.html#GetPlayerPickBody
function GetPlayerPickBody() end

---@return number Handle to interactable shape or zero
---@see @https://www.teardowngame.com/modding/api.html#GetPlayerInteractShape
function GetPlayerInteractShape() end

---@return number Handle to interactable body or zero
---@see @https://www.teardowngame.com/modding/api.html#GetPlayerInteractBody
function GetPlayerInteractBody() end

---@param handle number Handle to screen or zero for no screen
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetPlayerScreen
function SetPlayerScreen(handle) end

---@return number Handle to interacted screen or zero if none
---@see @https://www.teardowngame.com/modding/api.html#GetPlayerScreen
function GetPlayerScreen() end

---@param health number Set player health (between zero and one)
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetPlayerHealth
function SetPlayerHealth(health) end

---@return number Current player health
---@see @https://www.teardowngame.com/modding/api.html#GetPlayerHealth
function GetPlayerHealth() end

---@return nil
---@see @https://www.teardowngame.com/modding/api.html#GetPlayerHealth
function RespawnPlayer() end

---@param id string Tool unique identifier
---@param name string Tool name to show in hud
---@param file string Path to vox file
---@param group number _optional_ Tool group for this tool (1-6) Default is 6.
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#RegisterTool
function RegisterTool(id, name, file, group) end

---@return number Handle to currently visible tool body or zero if none
---@see @https://www.teardowngame.com/modding/api.html#GetToolBody
function GetToolBody() end

---@param transform Transform Tool body transform
---@param sway number Tool sway amount. Default is 1.0.
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetToolTransform
function SetToolTransform(transform, sway) end
