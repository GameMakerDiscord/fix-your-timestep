Fix Your Timestep source @net8floz 2018

## What is it?

This is a series of scripts to help you unlock your framerate by implementing the ideas 
and solutions as presented by Glenn Fiedler at http://gafferongames.com/game-physics/fix-your-timestep/ to 
provide you with a fixed time step.


## How to use?
First create an instance of `FixedTimestep`. Register objects or specific instances using the `_register` functions. You may register the `id` or `object_index` with either a `user_event` or `script_index` which will be executed during the fixed tick in the context of that instance.

The fixed step fires in the `end step` by default. You may prevent this by calling `fixed_timestep_disable()` and instead calling `fixed_timestep_update()` to update the tick manually.

## Further Reading 
Don't gather input in your fixed timestep scripts or events. It should instead be used for physics calculations. The fixed timestep will be called 0-`n` amount of times per step based on the delta beween the current frame and the previous frame to attempt to skip or execute the tick to match the targeted frame rate and `fps_real`. 


### Example of render interpolation discussed on Gaffer On Games.
```
draw_sprite_ext(
	sprite_index,image_index,
	lerp(xprevious,x,global._ts_render_alpha),
	lerp(yprevious,y,global._ts_render_alpha),
	image_xscale,image_yscale,
	image_angle,image_blend,
	image_alpha
); 
```



## Function reference

#### `fixed_timestep_register_script(object_index | instance_id, script_index)`
##### Registers an `object_index` or `instance_id` with the fixed timestep. The passed script will be executed in the scope of the registered instance on fixed tick. 

#### `fixed_timestep_register_user_event(object_index | instance_id, user_event_id)`
##### Registers an `object_index` or `instance_id` with the fixed timestep. The passed `user_event` id  will be executed using `event_user(user_even_id)` in the scope of the registered instance on fixed tick. 

#### `fixed_timestep_register_user_event(object_index | instance_id, user_event_id)`
##### Registers an `object_index` or `instance_id` with the fixed timestep. The passed `user_event` id  will be executed using `event_user(user_even_id)` in the scope of the registered instance on fixed tick. 

#### `fixed_timestep_unregister(object_index | instance_id)`
##### Unregister an `object_index` or `instance_id` from the fixed timestep. This goes for both registered scripts and user event types.

#### `fixed_timestep_set_disabled(boolean)`
##### Prevents the fixed timestep from updated. By default the fixed timestep updates itself in it's `step end` event. To take control of the execution order disable the fixed timestep and update it yourself

#### `fixed_timestep_update()`
##### Updates the fixed timestep. This is called automatically in the `FixTimestep` object in the `step end` event. Only call this function if you have already disabled the fixed timestep.

#### `fixed_timestep_set_target_fps`
##### Sets the target fps for the fixed timestep. Is initially 60.




## Credits

 - Tileset taken from:
https://opengameart.org/content/generic-platformer-tiles

 - Character art taken from:
http://www.openpixelproject.com/

 - Programming solutions by:
Glenn Fiedler at http://gafferongames.com/game-physics/fix-your-timestep/
