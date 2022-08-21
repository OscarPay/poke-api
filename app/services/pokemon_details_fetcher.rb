# frozen_string_literal: true

class PokemonDetailsFetcher
  def self.call(id)
    url = "https://pokeapi.co/api/v2/pokemon/#{id}"
    response = Faraday.get(url)
    JSON.parse(response.body)
  end
end
