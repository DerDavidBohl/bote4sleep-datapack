
function vote4sleep:resetvoting
function vote4sleep:printvoting
scoreboard players set #activeVoting v4s.global 1

execute as @s run function vote4sleep:vote4sleep
