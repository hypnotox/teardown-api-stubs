--[[
Sound functions are used for playing sounds or loops in the world.
There sound functions are always positioned and will be affected by acoustics simulation.
If you want to play dry sounds without acoustics you should use UiSound and UiSoundLoop in the User Interface section.
]]

---@param path string Path to ogg sound file
---@param nominalDistance number The distance in meters this sound is recorded at. Affects attenuation, default is 10.0
---@return number Sound handle
---@see @https://www.teardowngame.com/modding/api.html#LoadSound
function LoadSound(path, nominalDistance) end

---@param path string Path to ogg sound file
---@param nominalDistance number The distance in meters this sound is recorded at. Affects attenuation, default is 10.0
---@return number Loop handle
---@see @https://www.teardowngame.com/modding/api.html#LoadLoop
function LoadLoop(path, nominalDistance) end

---@param handle number Sound handle
---@param pos Vector _optional_ World position as vector. Default is player position.
---@param volume number _optional_ Playback volume. Default is 1.0
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#PlaySound
function PlaySound(handle, pos, volume) end

---@param handle number Sound handle
---@param pos Vector _optional_ World position as vector. Default is player position.
---@param volume number _optional_ Playback volume. Default is 1.0
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#PlayLoop
function PlayLoop(handle, pos, volume) end

---@param path string Music path
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#PlayMusic
function PlayMusic(path) end

---@return nil
---@see @https://www.teardowngame.com/modding/api.html#StopMusic
function StopMusic(path) end
