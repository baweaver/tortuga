--[[
@name    Tortuga Solo Bootstrap
@version 0.0.1
@author  Brandon Weaver
@date    2014/09/10

@description Where all the turtle programs gather. Chef-like manager bootstrapper
--]]


--[[
  Dependencies - Dependencies of the script to download. This is the same format as a craft,
  taking the parameters:

  @name          - name of the dependency
  @version       - version to fetch. Ignored for now, need a CDN to really use...
  @pastebin[opt] - pastebin id
  @gist[opt]     - gist id
  @git[opt]      - git repository to pull

  Note that pastebin, gist, and git are all ways to retrieve the dependency. Version will probably
  have to be assumed to be the latest unless I make my own mirror of version updates of things. The
  mirror will be known as a Lua Chest, much like a Ruby Gem.

  More than likely these will be parsed via JSON in the future as well.
]]
local dependenciesList = {
  --{name = 'tortuga-core', version = '0.0.1', pastebin = ''},
  --{name = 'json', version = '2.0.1', pastebin = '4nRg9CHU'},
  {name = '_', pastebin = '4w6sPV9H'},
  {name = 'stepper', pastebin = 'Ur0aCc6n'},
  {name = 'dig', pastebin = 'dqHNts58'}
}

local dependencyUrl = {
  pastebin = 'http://pastebin.com/raw.php?i=',
  gist     = 'https://gist.github.com/raw/'
}

local dependencyGet = {}

dependencyGet.base = function(type, dependency) do
  local request  = http.get(dependencyUrl[type]..dependency.gist)
  local response = request.readAll()
  request.close()

  local file = fs.open(dependency.name, 'w')
  file.write(response)
  file.close()
end

-- if not fs.exists("/.tortuga") then fs.makeDir('/.tortuga')
-- local lockFile = fs.open('/tortuga/chestfile.lock')

for i, dependency in ipairs(dependenciesList) do
  print('Downloading '..dependency.name)

  if     dependency.pastebin then dependencyGet.base('pastebin', dependency)
  elseif dependency.gist     then dependencyGet.base('gist', dependency)
  else
    error('Unknown format! Exiting...')
    return
  end
end