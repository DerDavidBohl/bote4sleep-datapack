tellraw @a {"text": "Schlafabstimmung:", "color": "gold", "bold": true}
tellraw @a ""
tellraw @a {"text": "[Ich möchte wach bleiben]", "color": "blue", "hoverEvent":{"action": "show_text", "value": "Stimme dafür, dass es Nacht bleibt"}, "clickEvent": {"action": "run_command", "value": "/trigger v4s.vote4wakeT"}}
tellraw @a {"text": "[Ich möchte, dass es Tag wird]", "color": "green", "hoverEvent":{"action": "show_text", "value": "Stimme dafür, dass es wieder Tag wird"}, "clickEvent": {"action": "run_command", "value": "/trigger v4s.vote4sleepT"}}
tellraw @a ""