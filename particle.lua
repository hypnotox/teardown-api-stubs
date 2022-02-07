--[[
Functions to configure and emit particles, used for fire, smoke and other visual effects.
There are two types of particles in Teardown - plain particles and smoke particles.
Plain particles are simple billboard particles simulated with gravity and velocity that can be used for fire, debris, rain, snow and such.
Smoke particles are only intended for smoke and they are simulated with fluid dynamics internally and rendered with some special tricks to get a more smoke-like appearance.

All functions in the particle API, except for SpawnParticle modify properties in the particle state, which is then used when emitting particles, so the idea is to set up a state, and then emit one or several particles using that state.

Most properties in the particle state can be either constant or animated over time.
Supply a single argument for constant, two argument for linear interpolation, and optionally a third argument for other types of interpolation.
There are also fade in and fade out parameters that fade from and to zero.
]]

---@return nil
---@see @https://www.teardowngame.com/modding/api.html#ParticleReset
function ParticleReset() end

---@param type string Type of particle. Can be "smoke" or "plain".
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#ParticleType
function ParticleType(type) end

---@param type number Tile in the particle texture atlas (0-15)
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#ParticleTile
function ParticleTile(type) end

---@param r0 number Red value
---@param g0 number Green value
---@param b0 number Blue value
---@param r1 number _optional_ Red value at end
---@param g1 number _optional_ Green value at end
---@param b1 number _optional_ Blue value at end
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#ParticleColor
function ParticleColor(r0, g0, b0, r1, g1, b1) end

---@param r0 number Radius
---@param r1 number _optional_ End radius
---@param interpolation string _optional_ Interpolation method: linear, smooth, easein, easeout or constant. Default is linear.
---@param fadein number _optional_ Fade in between t=0 and t=fadein. Default is zero.
---@param fadeout number _optional_ Fade out between t=fadeout and t=1. Default is one.
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#ParticleColor
function ParticleRadius(r0, r1, interpolation, fadein, fadeout) end

---@param a0 number Alpha (0.0 - 1.0)
---@param a1 number _optional_ End alpha (0.0 - 1.0)
---@param interpolation string _optional_ Interpolation method: linear, smooth, easein, easeout or constant. Default is linear.
---@param fadein number _optional_ Fade in between t=0 and t=fadein. Default is zero.
---@param fadeout number _optional_ Fade out between t=fadeout and t=1. Default is one.
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#ParticleAlpha
function ParticleAlpha(a0, a1, interpolation, fadein, fadeout) end

---@param g0 number Gravity
---@param g1 number _optional_ End gravity
---@param interpolation string _optional_ Interpolation method: linear, smooth, easein, easeout or constant. Default is linear.
---@param fadein number _optional_ Fade in between t=0 and t=fadein. Default is zero.
---@param fadeout number _optional_ Fade out between t=fadeout and t=1. Default is one.
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#ParticleGravity
function ParticleGravity(g0, g1, interpolation, fadein, fadeout) end

---@param d0 number Drag
---@param d1 number _optional_ End drag
---@param interpolation string _optional_ Interpolation method: linear, smooth, easein, easeout or constant. Default is linear.
---@param fadein number _optional_ Fade in between t=0 and t=fadein. Default is zero.
---@param fadeout number _optional_ Fade out between t=fadeout and t=1. Default is one.
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#ParticleDrag
function ParticleDrag(d0, d1, interpolation, fadein, fadeout) end

---@param d0 number Emissive
---@param d1 number _optional_ End emissive
---@param interpolation string _optional_ Interpolation method: linear, smooth, easein, easeout or constant. Default is linear.
---@param fadein number _optional_ Fade in between t=0 and t=fadein. Default is zero.
---@param fadeout number _optional_ Fade out between t=fadeout and t=1. Default is one.
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#ParticleEmissive
function ParticleEmissive(d0, d1, interpolation, fadein, fadeout) end

---@param r0 number Rotation
---@param r1 number _optional_ End rotation
---@param interpolation string _optional_ Interpolation method: linear, smooth, easein, easeout or constant. Default is linear.
---@param fadein number _optional_ Fade in between t=0 and t=fadein. Default is zero.
---@param fadeout number _optional_ Fade out between t=fadeout and t=1. Default is one.
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#ParticleRotation
function ParticleRotation(r0, r1, interpolation, fadein, fadeout) end

---@param s0 number Stretch
---@param s1 number _optional_ End stretch
---@param interpolation string _optional_ Interpolation method: linear, smooth, easein, easeout or constant. Default is linear.
---@param fadein number _optional_ Fade in between t=0 and t=fadein. Default is zero.
---@param fadeout number _optional_ Fade out between t=fadeout and t=1. Default is one.
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#ParticleStretch
function ParticleStretch(s0, s1, interpolation, fadein, fadeout) end

---@param s0 number Sticky
---@param s1 number _optional_ End sticky
---@param interpolation string _optional_ Interpolation method: linear, smooth, easein, easeout or constant. Default is linear.
---@param fadein number _optional_ Fade in between t=0 and t=fadein. Default is zero.
---@param fadeout number _optional_ Fade out between t=fadeout and t=1. Default is one.
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#ParticleSticky
function ParticleSticky(s0, s1, interpolation, fadein, fadeout) end

---@param s0 number Collide
---@param s1 number _optional_ End collide
---@param interpolation string _optional_ Interpolation method: linear, smooth, easein, easeout or constant. Default is linear.
---@param fadein number _optional_ Fade in between t=0 and t=fadein. Default is zero.
---@param fadeout number _optional_ Fade out between t=fadeout and t=1. Default is one.
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#ParticleCollide
function ParticleCollide(s0, s1, interpolation, fadein, fadeout) end

---@param bitmask number Particle flags (bitmask 0-65535)
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#ParticleFlags
function ParticleFlags(bitmask) end

---@param pos Vector World space point as vector
---@param velocity Vector World space velocity as vector
---@param lifetime number Particle lifetime in seconds
---@return nil
---@see @https://www.teardowngame.com/modding/api.html#SpawnParticle
function SpawnParticle(pos, velocity, lifetime) end
