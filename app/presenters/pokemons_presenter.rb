class PokemonsPresenter
  attr_reader :pagy, :pokemons

  def self.call(pokemons, pagy)
    new(pokemons, pagy).call
  end

  def initialize(pokemons, pagy)
    @pagy = pagy
    @pokemons = pokemons
  end
  
  def call
    {
      page: pagy.page,
      items: pagy.items,
      pages: pagy.pages,
      total: pagy.count,
      data: data
    }
  end

  private

  def data
    pokemons.map do |pokemon|
      {
        id: pokemon.id,
        name: pokemon.name,
        image: pokemon.image,
        types: pokemon.types
      }
    end
  end

end