--[[
The user interface functions are used for drawing interactive 2D graphics and can only be called from the draw function of a script.
The ui functions are designed with the immediate mode gui paradigm in mind and uses a cursor and state stack.
Pushing and popping the stack is cheap and designed to be called often.

Alignment -> Description
left: Horizontally align to the left
right: Horizontally align to the right
center: Horizontally align to the center
top: Vertically align to the top
bottom: Vertically align to the bottom
middle: Vertically align to the middle
]]

---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiMakeInteractive
function UiMakeInteractive() end

---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiPush
function UiPush() end

---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiPop
function UiPop() end

---@return number Width of draw context
---@see @https://www.teardowngame.com/modding/api.html#UiWidth
function UiWidth() end

---@return number Height of draw context
---@see @https://www.teardowngame.com/modding/api.html#UiHeight
function UiHeight() end

---@return number Half width of draw context
---@see @https://www.teardowngame.com/modding/api.html#UiCenter
function UiCenter() end

---@return number Half height of draw context
---@see @https://www.teardowngame.com/modding/api.html#UiMiddle
function UiMiddle() end

---@param r number Red channel
---@param g number Green channel
---@param b number Blue channel
---@param a number _optional_ Alpha channel. Default 1.0
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiColor
function UiColor(r, g, b, a) end

---@param r number Red channel
---@param g number Green channel
---@param b number Blue channel
---@param a number _optional_ Alpha channel. Default 1.0
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiColor
function UiColorFilter(r, g, b, a) end

---@param x number X component
---@param y number Y component
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiTranslate
function UiTranslate(x, y) end

---@param angle number Angle in degrees, counter clockwise
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiRotate
function UiRotate(angle) end

---@param x number X component
---@param y number _optional_ Y component. Default value is x.
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiScale
function UiScale(x, y) end

---@param width number Window width
---@param height number Window height
---@param clip boolean _optional_ Clip content outside window. Default is false.
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiWindow
function UiWindow(width, height, clip) end

---@return number, number, number, number Left, Top, Right, Bottom
---@see @https://www.teardowngame.com/modding/api.html#UiSafeMargins
function UiSafeMargins() end

---@param alignment string Alignment keywords
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiAlign
function UiAlign(alignment) end

---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiModalBegin
function UiModalBegin() end

---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiModalEnd
function UiModalEnd() end

---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiDisableInput
function UiDisableInput() end

---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiEnableInput
function UiEnableInput() end

---@return boolean True if current context receives input
---@see @https://www.teardowngame.com/modding/api.html#UiReceivesInput
function UiReceivesInput() end

---@return number, number X coordinate, Y coordinate
---@see @https://www.teardowngame.com/modding/api.html#UiGetMousePos
function UiGetMousePos() end

---@param w number Width
---@param h number Height
---@return boolean True if mouse pointer is within rectangle
---@see @https://www.teardowngame.com/modding/api.html#UiIsMouseInRect
function UiIsMouseInRect(w, h) end

---@param point Vector _3D world position as vector
---@return number, number, number X coordinate, Y coordinate, Distance to point
---@see @https://www.teardowngame.com/modding/api.html#UiWorldToPixel
function UiWorldToPixel(point) end

---@param x number X coordinate
---@param y number Y coordinate
---@return Vector _3D world direction as vector
---@see @https://www.teardowngame.com/modding/api.html#UiPixelToWorld
function UiPixelToWorld(x, y) end

---@param amount number Blur amount (0.0 to 1.0)
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiBlur
function UiBlur(amount) end

---@param path string Path to TTF font file
---@param size number Font size (10 to 100)
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiFont
function UiFont(path, size) end

---@return number Font size
---@see @https://www.teardowngame.com/modding/api.html#UiFontHeight
function UiFontHeight() end

---@param text string Print text at cursor location
---@param move boolean _optional_ Automatically move cursor vertically. Default false.
---@return number, number Width of text, Height of text
---@see @https://www.teardowngame.com/modding/api.html#UiText
function UiText(text, move) end

---@param text string A text string
---@return number, number Width of text, Height of text
---@see @https://www.teardowngame.com/modding/api.html#UiGetTextSize
function UiGetTextSize(text) end

---@param width number Maximum width of text
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiWordWrap
function UiWordWrap(width) end

---@param r number Red channel
---@param g number Green channel
---@param b number Blue channel
---@param a number Alpha channel
---@param thickness number _optional_ Outline thickness. Default is 0.1
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiTextOutline
function UiTextOutline(r, g, b, a, thickness) end

---@param r number Red channel
---@param g number Green channel
---@param b number Blue channel
---@param a number Alpha channel
---@param distance number _optional_ Shadow distance. Default is 1.0
---@param blur number _optional_ Shadow blur. Default is 0.5
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiTextShadow
function UiTextShadow(r, g, b, a, distance, blur) end

---@param w number Width
---@param h number Height
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiRect
function UiRect(w, h) end

---@param path string Path to image (PNG or JPG format)
---@return number, number Image width, Image height
---@see @https://www.teardowngame.com/modding/api.html#UiImage
function UiImage(path) end

---@param path string Path to image (PNG or JPG format)
---@return number, number Image width, Image height
---@see @https://www.teardowngame.com/modding/api.html#UiGetImageSize
function UiGetImageSize(path) end

---@param path string Path to image (PNG or JPG format)
---@param width number Width
---@param height number Height
---@param borderWidth number Border width
---@param borderHeight number Border height
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiImageBox
function UiImageBox(path, width, height, borderWidth, borderHeight) end

---@param path string Path to sound file (OGG format)
---@param volume number _optional_ Playback volume. Default 1.0
---@param pitch number _optional_ Playback pitch. Default 1.0
---@param pan number _optional_ Playback stereo panning (-1.0 to 1.0). Default 0.0.
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiSound
function UiSound(path, volume, pitch, pan) end

---@param path string Path to sound file (OGG format)
---@param volume number _optional_ Playback volume. Default 1.0
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiSoundLoop
function UiSoundLoop(path, volume) end

---@param amount number Mute by this amount (0.0 to 1.0)
---@param music boolean _optional_ Mute music as well
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiMute
function UiMute(amount, music) end

---@param path string Path to image (PNG or JPG format)
---@param borderWidth number Border width
---@param borderHeight number Border height
---@param r number _optional_ Red multiply. Default 1.0
---@param g number _optional_ Green multiply. Default 1.0
---@param b number _optional_ Blue multiply. Default 1.0
---@param a number _optional_ Alpha channel. Default 1.0
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiButtonImageBox
function UiButtonImageBox(path, borderWidth, borderHeight, r, g, b, a) end

---@param r number Red multiply.
---@param g number Green multiply.
---@param b number Blue multiply.
---@param a number _optional_ Alpha channel. Default 1.0
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiButtonHoverColor
function UiButtonHoverColor(r, g, b, a) end

---@param r number Red multiply.
---@param g number Green multiply.
---@param b number Blue multiply.
---@param a number _optional_ Alpha channel. Default 1.0
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiButtonPressColor
function UiButtonPressColor(r, g, b, a) end

---@param dist number Press distance
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#UiButtonPressDist
function UiButtonPressDist(dist) end

---@param text string Text on button
---@param w number _optional_ Button width
---@param h number _optional_ Button height
---@return boolean True if user clicked button
---@see @https://www.teardowngame.com/modding/api.html#UiTextButton
function UiTextButton(text, w, h) end

---@param path string Path to image (PNG or JPG format)
---@param w number Button width
---@param h number Button height
---@return boolean True if user clicked button
---@see @https://www.teardowngame.com/modding/api.html#UiImageButton
function UiImageButton(path, w, h) end

---@param w number Button width
---@param h number Button height
---@return boolean True if user clicked button
---@see @https://www.teardowngame.com/modding/api.html#UiBlankButton
function UiBlankButton(w, h) end

---@param path number Image path (PNG or JPG file)
---@param axis string Drag axis, must be "x" or "y"
---@param current number Current value
---@param min number Minimum value
---@param max number Maximum value
---@return number, boolean New value, same as current if not changed, True if user is finished changing (released slider)
---@see @https://www.teardowngame.com/modding/api.html#UiSlider
function UiSlider(path, axis, current, min, max) end

---@return number Handle to the screen running this script or zero if none.
---@see @https://www.teardowngame.com/modding/api.html#UiGetScreen
function UiGetScreen() end
