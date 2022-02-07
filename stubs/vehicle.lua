--[[
Vehicles are set up in the editor and consists of multiple parts owned by a vehicle entity.
]]

---@param tag string Tag name
---@param global boolean _optional_ Search in entire scene
---@return number Handle to first vehicle with specified tag or zero if not found
---@see @https://www.teardowngame.com/modding/api.html#FindVehicle
function FindVehicle(tag, global) end

---@param tag string Tag name
---@param global boolean _optional_ Search in entire scene
---@return table<number, number> Indexed table with handles to all vehicles with specified tag
---@see @https://www.teardowngame.com/modding/api.html#FindVehicles
function FindVehicles(tag, global) end

---@param vehicle number Vehicle handle
---@return Transform Transform of vehicle
---@see @https://www.teardowngame.com/modding/api.html#GetVehicleTransform
function GetVehicleTransform(vehicle) end

---@param vehicle number Vehicle handle
---@return number Main body of vehicle
---@see @https://www.teardowngame.com/modding/api.html#GetVehicleBody
function GetVehicleBody(vehicle) end

---@param vehicle number Vehicle handle
---@return number Vehicle health (zero to one)
---@see @https://www.teardowngame.com/modding/api.html#GetVehicleHealth
function GetVehicleHealth(vehicle) end

---@param vehicle number Vehicle handle
---@return Vector Driver position as vector in vehicle space
---@see @https://www.teardowngame.com/modding/api.html#GetVehicleDriverPos
function GetVehicleDriverPos(vehicle) end

---@param vehicle number Vehicle handle
---@param drive number Reverse/forward control -1 to 1
---@param steering number Left/right control -1 to 1
---@param handbrake boolean Handbrake control
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#DriveVehicle
function DriveVehicle(vehicle, drive, steering, handbrake) end
