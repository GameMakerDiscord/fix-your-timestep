/*
Fix Your Timestep - By Kyle Askew @net8floz - www.kyleaskew.com 

This is a series of scripts to help you unlock your framerate by implementing the ideas 
and solutions as presented by Glenn Fiedler at http://gafferongames.com/game-physics/fix-your-timestep/

This is an alternative to the more popular delta time solution which can be a headache. Both approaches have their pros and cons. Due to the fact
that GameMaker Studio 2 does not have a separate thread for render / update this solution can occasionally cause jitteriness 
if your game is not stable. The upside to this approach is you don't have to do any additional math in your physics to compensate for 
lag or to allow your users to choose thier preferred frame rate. 

In general you should just make your game in GameMaker and not worry about timesteps. But if you must here's a solution. 

///WHAT TO IMPORT?///
All that you need from this project is the scripts. The objects and assets included are for the demo only. 

///INSTALLING THE TIMESTEP///
You should be using a persistent main game controller somewhere in your game. Let's say it's called `obj_game`. In `obj_game` add the following code
to the following events: 


```
CREATE EVENT 
timestep_begin(); 
timestep_register(obj_timely); // ( use your object_index here - see below for more details ) 
```

```
STEP EVENT
timestep_update();
```

///CONFIGURE YOUR OBJECTS STEP///
Now the timestep is implemented! Next is to set up your objects to use the new timestep. First - decide which objects need to use 
the timestep and register them with the `timestep_register()` function. This function accepts either a single instance or an 
object_index as it's argument. This argument gets added to a list and iterated upon - so you want this list to be as small as possible. 

~~~What to do:~~~ 
Create a parent object - `obj_timely`. 
Have all instances that need the fixed step to inherit this object
Only once - in `obj_game` create event - call the timestep_register function and pass this object_index. 
Now all children will use the fixed timestep

~~~What NOT to do:~~~
Call `timestep_register(id)` in every single create event of every object you want to use in the timestep. 
While you can pass a single instance - you want to register as little as possible to avoid unneeded iteration. 

IF you need to remove an instance / object_index from the timestep update list - use the `timestep_unregister(object_index)` function.

///CONFIGURE YOUR OBJECTS RENDER///
The Fix Your Timestep article I linked above suggests we interpolate between the two positions of our render state using a calculated `alpha` variable. 
I have included a script meant to replace the `draw_self()` function. It is called `timestep_draw_self()` 

Open your object ( or it's parent ) - create a `DRAW EVENT` and add this line:
`timestep_draw_self();` 

To extend upon that script open it up and see what's under the hood.

///HOW TO USE THE NEW FIXED STEP///
Finally - the last thing you need to know is you no longer do your physics in the step event. This system depends on `user_events` to 
make the magic happen. By default it is user_event 0. To use a different `user_event` simply pass an integer to the `timestep_begin()` function: 

```
timestep_begin(2);
```

Check out the test objects in this example for more information.

///CREDITS///
Tileset taken from:
https://opengameart.org/content/generic-platformer-tiles

Character art taken from:
http://www.openpixelproject.com/

Programming solutions by:
Glenn Fiedler at http://gafferongames.com/game-physics/fix-your-timestep/

Fix Your Timestep - By Kyle Askew @net8floz - www.kyleaskew.com 

///HELP & SUPPORT///
Find me on twitter or on the official /r/gamemaker Discord Server for questions or help. 

*/