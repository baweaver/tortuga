local tArgs = { ... }

os.loadAPI('tortugaAPI')

local subProgram = tArgs[1] or 'help'
local action     = tArgs[2] or 'help'
local argument   = tArgs[3]

tortugaAPI.compass(subProgram, action, argument)
