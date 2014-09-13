# Tortuga

Lua Package manager and Bootstrapper for ComputerCraft heavily inspired by OpsCode Chef, Rubygems, and watching too many shoddy pirate movies whilst bored.

**NOTE** - Only tortuga solo will work as of now. Distributed systems will come in later releases.

## Installing

Download and run the bootstrap program (It will delete itself.)

```
pastebin get () bootstrap
bootstrap
```

## Usage

TODO - See Tortuga API, code has been heavily documented. Eventually the Wiki will become the single source of truth

## Contributing

Send a pull request in with your change. For the time being I'll use PRs to add new Maps and Chests to the program.

Later this will be handled by a CDN if there's enough interest.

## What's Next?

The full version of Tortuga will be where things become truly powerful. Tortuga solo allows you to provision a single turtle well.

With the full version, Tortuga will:

* Have a global list of Coves(sources), Maps(program lists), and Chests(cookbooks)
  * Be able to update the entire network of turtles at once
* Ability to clone current units as templates
* Ability for mass idempotent updating of units (ie, nothing changes unless something new is there)
* Network Crewmates(units) in Ships, responding to a Captain (Boss Server)
  * Ability to have multiple Ships
  * Captains can view the status of crewmates (Fuel, Location, etc) - This one is ambitious, granted
  * Crewmates can hop ships or be forced to walk the plank (Destroyed, or switched to Solo)

This is undoubtably going to take a while, and the more demand there is and contributers we can get on here the faster it will go.
