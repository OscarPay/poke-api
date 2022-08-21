# frozen_string_literal: true

types = [
  { name: 'normal', color: '#A8A878' },
  { name: 'fighting', color: '#C03028' },
  { name: 'flying', color: '#A890F0' },
  { name: 'poison', color: '#A040A0' },
  { name: 'ground', color: '#E0C068' },
  { name: 'rock', color: '#B8A038' },
  { name: 'bug', color: '#A8B820' },
  { name: 'ghost', color: '#705898' },
  { name: 'steel', color: '#B8B8D0' },
  { name: 'fire', color: '#F08030' },
  { name: 'water', color: '#6890F0' },
  { name: 'grass', color: '#78C850' },
  { name: 'electric', color: '#F8D030' },
  { name: 'psychic', color: '#F85888' },
  { name: 'ice', color: '#98D8D8' },
  { name: 'dragon', color: '#F08080' },
  { name: 'dark', color: '#705848' },
  { name: 'fairy', color: '#EE99AC' }
]

Type.insert_all(types)

# puts "Fetching first generation Pokemon..."
# PokemonCreator.call
# puts "First generation Pokemon fetched!"

# puts "Fetching second generation Pokemon..."
# PokemonCreator.call(100, 151)
# puts "Second generation Pokemon fetched!"

# puts "Fetching third generation Pokemon..."
# PokemonCreator.call(135, 251)
# puts "Third generation Pokemon fetched!"

# puts "Fetching fourth generation Pokemon..."
# PokemonCreator.call(107, 386)
# puts "Fourth generation Pokemon fetched!"

# puts "Fetching fifth generation Pokemon..."
# PokemonCreator.call(156, 493)
# puts "Fifth generation Pokemon fetched!"

# puts "Fetching sixth generation Pokemon..."
# PokemonCreator.call(72, 649)
# puts "Sixth generation Pokemon fetched!"

# puts "Fetching seventh generation Pokemon..."
# PokemonCreator.call(88, 721)
# puts "Seventh generation Pokemon fetched!"

# puts "Fetching eighth generation Pokemon..."
# PokemonCreator.call(96, 809)
# puts "Eighth generation Pokemon fetched!"
