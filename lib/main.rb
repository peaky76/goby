require_relative "driver.rb"
require_relative "Battle/BattleCommand/escape.rb"
require_relative "Battle/BattleCommand/use.rb"
require_relative "Battle/BattleCommand/Attack/kick.rb"
require_relative "Entity/player.rb"
require_relative "Map/Map/donut_field.rb"

player = Player.new(
                    name: "Player1",
                    max_hp: 100,
                    attack: 10,
                    agility: 3,
                    inventory: [Couple.new(Donut.new, 10)],
                    battle_commands: [ Escape.new, Kick.new, Use.new ],
                    map: DonutField.new,
                    location: Couple.new(0,0)
                   )
run_driver(player)
