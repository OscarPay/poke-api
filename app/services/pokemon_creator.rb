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
    pokemons
  end

  private

  def results
    @results ||= PokemonFetcher.call(limit, offset)
  end

  def pokemons
    results.each do |result|
      id = result['url'].split('/').last.to_i
      next if Pokemon.exists?(id)

      details = PokemonDetailsFetcher.call(id)

      data = {
        id: id,
        name: result['name'],
        image: details['sprites']['front_default']
      }

      pokemon = Pokemon.new(data)

      types = details['types'].map { |type| type['type']['name'] }
      
      types.each do |type|
       type = Type.find_by(name: type.downcase)
        pokemon.types << type
      end

      pokemon.save!
    end
  end

end