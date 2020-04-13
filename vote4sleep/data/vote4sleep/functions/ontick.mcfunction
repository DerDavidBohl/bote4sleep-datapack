execute as @a store result score @s v4s.sleepTimer run data get entity @s SleepTimer
execute store result score #dayTime v4s.global run time query daytime
execute store result score #playerCount v4s.global run execute if entity @a

scoreboard players operation #halfPlayerCount v4s.global = #playerCount v4s.global
scoreboard players operation #halfPlayerCount v4s.global /= #2 v4s.constants

execute store result score #sleepingPlayers v4s.global run execute if entity @a[scores={v4s.sleepTimer=1..}]

execute if score #activeVoting v4s.global matches 1 run scoreboard players enable @a v4s.vote4sleepT
execute if score #activeVoting v4s.global matches 1 run scoreboard players enable @a v4s.vote4wakeT

execute if score #activeVoting v4s.global matches 0 as @a if score @s v4s.sleepTimer matches 1.. run function vote4sleep:startvoting
execute if score #sleepingPlayers v4s.global matches 0 if score #activeVoting v4s.global matches 1 run function vote4sleep:resetvoting

execute if score #activeVoting v4s.global matches 1 as @a[scores={v4s.vote4sleepT=1..}] run function vote4sleep:vote4sleep
execute if score #activeVoting v4s.global matches 1 as @a[scores={v4s.vote4wakeT=1..}] run function vote4sleep:vote4wake


execute if score #sleepingPlayers v4s.global matches 1.. if score #sum v4s.vote4sleep > #halfPlayerCount v4s.global run function vote4sleep:fastforward