# Dummies
scoreboard objectives add v4s.global dummy
scoreboard objectives add v4s.sleepTimer dummy
scoreboard objectives add v4s.constants dummy
scoreboard objectives add v4s.vote4sleep dummy

# Triggers:
scoreboard objectives add v4s.vote4sleepT trigger
scoreboard objectives add v4s.vote4wakeT trigger

scoreboard players enable


# Constants:
scoreboard players set #0 v4s.constants 0
scoreboard players set #1 v4s.constants 1
scoreboard players set #2 v4s.constants 2
scoreboard players set #1000 v4s.constants 1000

scoreboard players set #activeVoting v4s.global 0
scoreboard players set #sleepingPlayers v4s.global 0
scoreboard players set #fastForward v4s.global 0