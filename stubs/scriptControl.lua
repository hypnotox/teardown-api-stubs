--[[
General functions that control the operation and flow of the script.

Physical input -> Description
esc: Escape key
tab: Tab key
lmb: Left mouse button
rmb: Right mouse button
mmb: Middle mouse button
uparrow: Up arrow key
downarrow: Down arrow key
leftarrow: Left arrow key
rightarrow: Right arrow key
f1-f12: Function keys
backspace: Backspace key
alt: Alt key
delete: Delete key
home: Home key
end: End key
pgup: Pgup key
pgdown: Pgdown key
insert: Insert key
space: Space bar
shift: Shift key
ctrl: Ctrl key
return: Return key
any: Any key or button
a,b,c,...: Latin, alphabetical keys a through z
0-9: Digits, zero to nine
mousedx: Mouse horizontal diff. Only valid in InputValue.
mousedy: Mouse vertical diff. Only valid in InputValue.
mousewheel: Mouse wheel. Only valid in InputValue.

Logical input -> Description
up: Move forward / Accelerate
down: Move backward / Brake
left: Move left
right: Move right
interact: Interact
flashlight: Flashlight
jump: Jump
crouch: Crouch
usetool: Use tool
grab: Grab
handbrake: Handbrake
map: Map
pause: Pause game (escape)
camerax: Camera x movement, scaled by sensitivity. Only valid in InputValue.
cameray: Camera y movement, scaled by sensitivity. Only valid in InputValue.
]]

---@return string Dot separated string of current version of the game
---@see @https://www.teardowngame.com/modding/api.html#GetVersion
function GetVersion() end

---@param version string Reference version
---@return boolean True if current version is at least provided one
---@see @https://www.teardowngame.com/modding/api.html#HasVersion
function HasVersion(version) end

---@return number The time in seconds since level was started
---@see @https://www.teardowngame.com/modding/api.html#GetTime
function GetTime() end

---@return number The timestep in seconds
---@see @https://www.teardowngame.com/modding/api.html#GetTimeStep
function GetTimeStep() end

---@return string Name of last pressed key, empty if no key is pressed
---@see @https://www.teardowngame.com/modding/api.html#InputLastPressedKey
function InputLastPressedKey() end

---@param input string The input identifier
---@return boolean True if input was pressed during last frame
---@see @https://www.teardowngame.com/modding/api.html#InputPressed
function InputPressed(input) end

---@param input string The input identifier
---@return boolean True if input was released during last frame
---@see @https://www.teardowngame.com/modding/api.html#InputReleased
function InputReleased(input) end

---@param input string The input identifier
---@return boolean True if input is currently held down
---@see @https://www.teardowngame.com/modding/api.html#InputDown
function InputDown(input) end

---@param input string The input identifier
---@return number Depends on input type
---@see @https://www.teardowngame.com/modding/api.html#InputValue
function InputValue(input) end

---@param variable string Name of number variable in the global context
---@param value number The new value
---@param transition string _optional_ Transition type. See description.
---@param time number _optional_ Transition time (seconds)
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetValue
function SetValue(variable, value, transition, time) end

---@param title string Text on button
---@return number True if clicked, false otherwise
---@see @https://www.teardowngame.com/modding/api.html#PauseMenuButton
function PauseMenuButton(title) end

---@param mission string An identifier of your choice
---@param path string Path to level XML file
---@param layers string _optional_ Active layers. Default is no layers.
---@param passThrough boolean _optional_ If set, loading screen will have no text and music will keep playing
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#StartLevel
function StartLevel(mission, path, layers, passThrough) end

---@param paused boolean True if game should be paused
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SetPaused
function SetPaused(paused) end

---@return nil
---@see @https://www.teardowngame.com/modding/api.html#Restart
function Restart() end

---@return nil
---@see @https://www.teardowngame.com/modding/api.html#Menu
function Menu() end
