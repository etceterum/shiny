# shiny
Combining the superpowers of MRuby and OpenSceneGraph

## Desired Features
- Portable, i.e. desktop (Linux, MacOS, Windows) and mobile (iOS, Android); potentially web
- The "platform" is done in C++ and mainly provides Ruby (MRuby) bindings to OpenSceneGraph
  and other libraries (e.g., input library, physics library, ...);
  the "platform" takes care of all the performance-critical code and all the low-level stuff
  that cannot be done in the Ruby world
- The "framework" is done on top of the "platform" in Ruby (MRuby), based on standard MRuby
  libraries, the bindings provided by the "platform", as well as in-house and third-party MRuby Gems ("mgems")
- A special directory structure will be used so that the "framework" knows where to pick up
  project-specific code
- Aim mainly at game development, but make it flexible enough to be used beyond
- Make it really easy to create a new project. Perhaps, provide a generator ("init" script). 
  The goal is so that once the game dev has an idea, prototyping can be started right away and doesn't require
  any extensive configuration
- Pre-defined project structure (convention over configuration, think Rails) so that the "framework" knows
  where to look for code, texture atlases, 3D models, fonts, sounds, etc.
- Game Objects have modular structure inspired by Unity3d. User-developed "scripts" can be attached to objects
  and executed at various stages of object lifecycle
- Eventually, a library (libraries) of reusable components (think RubyGems, NPM)
- Console/debugger. Remote debugger would be nice to have (e.g., connect from desktop to mobile running the project)
- A desktop host platform "tool" that will provide all the main commands (think "rails", "node"):
  - the "init" command initializes a new project
  - the "run" command runs a project
  - the "package" command builds a project for a specific target (e.g., iOS, Android or desktop standalone executable)
  - ...
- Development vs. Release mode of operation - for example, in development mode, texture atlases are
  not compiled and individual images are used
- Support for hot-swap of assets/code in development mode
- Think about supporting multiple displays/output devices (Oculus Rift) from the beginning; 
  same for input controller types (accelerometer, wii nunchuck, ...)
- Think about resolution-independency
- Make it easy to create UIs - 2D and 3D
- At least, initially - emphasis on supporting 2D as opposed to 3D
- Support for native 3rd-party bindings later
- Potentially, other scripting language bindings (Lua, Squirrel, Javascript) later