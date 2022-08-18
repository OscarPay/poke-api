class PokemonFetcher

  # @param limit [Integer]
  # @param offset [Integer]
  # @return [Array]
  # [
  #   {"name"=>"jynx", "url"=>"https://pokeapi.co/api/v2/pokemon/124/"}, 
  #   {"name"=>"electabuzz", "url"=>"https://pokeapi.co/api/v2/pokemon/125/"}
  # ]
  def self.call(limit = 151, offset = 0)
    url = "https://pokeapi.co/api/v2/pokemon/?limit=#{limit}&offset=#{offset}"
    response = Faraday.get(url)
    JSON.parse(response.body)['results']
  end
end