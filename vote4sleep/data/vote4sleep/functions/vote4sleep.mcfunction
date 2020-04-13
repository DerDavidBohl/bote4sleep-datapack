#Vote for Sleep

scoreboard players set @s v4s.vote4sleep 1
execute store result score #sum v4s.vote4sleep run execute if entity @a[scores={v4s.vote4sleep=1}]

tellraw @a [{"selector": "@s", "color": "aqua"}, {"text": " hat dafür gestimmt, zu schlafen...\n", "color": "reset"}]

function vote4sleep:printresults
scoreboard players reset @s v4s.vote4sleepT