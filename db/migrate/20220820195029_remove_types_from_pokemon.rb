class RemoveTypesFromPokemon < ActiveRecord::Migration[7.0]
  def change
    remove_column :pokemons, :types, :string
  end
end
