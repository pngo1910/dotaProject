# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

api = Dota.api
teams = api.teams
heroes = api.heroes
all_items = api.items
all_abilities = api.abilities
teams.each do |team|
  new_team = Team.create(name: team.name,
                         tag: team.tag,
                         url: team.url)
  new_team.players.create(name: Faker::Games::Dota.unique.player)
end

heroes.each do |hero|
  player = Player.find(rand(1..heroes.count))
  new_hero = player.heroes.create(name: hero.name)
end

all_abilities.each do |ability|
  hero = Hero.find(rand(1..Hero.count))
  hero.abilities.create(name: ability.name)
end

all_items.each do |item|
  hero = Hero.find(rand(1..Hero.count))
  hero.items.create(name: item.name)
end

puts Team.count
puts Player.count
puts Hero.count
puts Ability.count
puts Item.count
