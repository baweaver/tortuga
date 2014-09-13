--[[--================================================================================================================--

Tortuga API - Interface for creating, maintaining, and sustaining large scale turtle networks

Currently the program will only operate in Solo mode, meaning it can only provision single turtles. Later releases
of the program will enable a Captain (boss) to be chosen to manage the crewmates (computers), including forcing updates
across its entire ship.

@author Brandon Weaver
@version 0.0.1
@description Chef / Chef Solo for ComputerCraft

]]--==================================================================================================================--

-- Requirements
local apis = {'json', 'underscore'}

-- Load Requirements
for i, api in ipairs(apis) do os.loadAPI(api) end

--====================================================================================================================--

-- Namespace
local programs = {}

-- Maps - JSON files specifying paths to programs
programs.maps = {}

-- Chests - Containers for sets of programs meant for certain tasks
programs.chests = {}

-- Cannon - Destroys turtles or network segments
programs.cannon = {}

-- Jolly Roger - Flagship that drives and monitors programs. TODO
programs.jollyRoger = {}

-- Manifest - List of installed programs for versioning
programs.manifest = {}

-- Loot - Loots the chest of another turtle, cloning it
programs.loot = {}

-- Cove - List of repositories where Maps and Chests can be found
programs.cove = {}

-- Lock tortuga in Solo mode for a while until I get the rest of this done
local mode = 'solo'

--====================================================================================================================--

--[[

Maps - JSON files specifying paths to programs

Functions:
* get    - get dependency
* chart  - list known program(s)
* update - updates map files
* init   - initializes map files

]]

-- Init - Loads in and initializes map files for use
programs.maps.init = function()
  
end

-- Get - gets a dependency
--
-- params:
--   @dependencyName - Name of the dependency to fetch
programs.maps.get = function(dependencyName)
  
end

-- Chart - charts out available programs and their versions
--
-- params:
--   @dependencyName - Specific file to fetch
programs.maps.chart = function(dependencyName)

end

-- Update - updates all current map files
--
-- params:
--   @force - Force redownloading of all maps
programs.maps.update = function(force)

end

-- END Maps

--====================================================================================================================--

--[[

Chests - Packages of programs used to initialize full systems

Functions:
* get    - get a chest
* chart  - list know chest(s)
* update - updates chest files
* init   - initializes chest files

]]

-- Init - Loads in and initializes chest files for use
programs.chests.init = function()
  
end

-- Get - gets a dependency
--
-- params:
--   @dependencyName - Name of the dependency to fetch
programs.chests.get = function(dependencyName)
  
end

-- Chart - charts out available programs and their versions
--
-- params:
--   @dependencyName - Specific file to fetch
programs.chests.chart = function(dependencyName)

end

-- Update - updates all current chest files
--
-- params:
--   @force - Force redownloading of all chests
programs.chests.update = function(force)

end

-- END Chests

--====================================================================================================================--

--[[

Cannon - Destroys turtles or network segments. TODO

Functions:
* fire    - fire a shell at a turtle, destroying it
* implode - fires into self, wiping turtle clean

]]

programs.cannon.fire = function(turtleID)

end

programs.cannon.implode = function()

end

-- END cannon

--====================================================================================================================--

--[[

Jolly Roger - Flagship that drives and monitors programs. TODO

NON-SOLO

]]

-- END Jolly Roger

--====================================================================================================================--

--[[

Manifest - List of installed programs for versioning

Functions:
* chart   - charts the manifest of the system
* find    - finds a specific entity in the system
* load    - loads an external manifest
* smuggle - outputs a chest version of the manifest for exporting
]]

-- END Manifest

-- Chart - Charts the manifest of the current system
programs.manifest.chart = function()

end

-- Find - Finds a manifest item
--
-- params:
--   @item - Item to find
programs.manifest.find = function(item)

end

-- Load - Loads an external manifest as if it were a chest
--
-- params:
--   @externalManifest - Manifest to load
programs.manifest.load = function(externalManifest)

end

-- Smuggle - Smuggles turtles manifest to another turtle
--
-- params:
--   @turtleID - Turtle to smuggle manifest to
programs.manifest.smuggle = function(turtleID)

end

--====================================================================================================================--

--[[

Loot - Loots the chest of another turtle, cloning it

NON-SOLO

Functions:
* get - Gets the manifest from another turtle to replicate

]]

-- Get - Gets the manifest file from another turtle to execute
--
-- params:
--   @turtleID - Turtle to loot manifest from
programs.loot.get = function(turtleID)

end

-- END Loot

--====================================================================================================================--

--[[

Cove - List of repositories where Maps and Chests can be found

Functions:
* chart   - Charts the current sources list
* add     - Adds an external source
* remove  - Removes a source
* get     - Gets a sources list
* smuggle - Outputs the sources list

]]

-- Chart - Charts the current sources list
programs.cove.chart = function()
end

-- Add - Adds an external source
--
-- params:
--   @source - Source to add
programs.cove.add = function(source)

end

-- Remove - Removes an external source
--
-- params:
--   @source - Source to remove
programs.cove.remove = function(source)

end

-- Get - gets an external source
--
-- params:
--   @location - Location of sources list
programs.cove.get = function(source)

end

-- Smuggle - Smuggles turtles cove to another turtle
--
-- params:
--   @turtleID - Turtle to smuggle cove to
programs.cove.smuggle = function(turtleID)

end

-- END Cove

--====================================================================================================================--

--[[

Compass - Navigates input from the CLI to the correct programs

Functions:
* compass - Main dispatcher and entry point for API

]]

-- Compass - Main dispatcher and entry point for the API
--
-- params:
--   @subProgram - Which tortuga program to execute
--   @action     - Which action to perform from the program
--   @argument   - What arguments to pass to the function
local function compass(subProgram, action, argument)
  programs[subProgram][action](argument)
end

-- END Compass

--====================================================================================================================--
