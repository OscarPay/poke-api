class PokemonCreator
  attr_reader :limit, :offset

  def self.call(limit = 151, offset = 0)    
    new(limit, offset).call
  end

  def initialize(limit = 151, offset = 0)
    @limit = limit
    @offset = offset
  end

  def call
    Pokemon.insert_all(pokemons) if pokemons.any?
  end

  private

  def results
    results = PokemonFetcher.call(limit, offset)
  end

  def pokemons
    results.map do |result|
      id = result['url'].split('/').last.to_i

      next if Pokemon.exists?(id)

      details = PokemonDetailsFetcher.call(id)

      {
        id: id,
        name: result['name'],
        image: details['sprites']['front_default'],
        types: details['types'].map { |type| type['type']['name'] }.join(', ')
      }
    end
  end

end