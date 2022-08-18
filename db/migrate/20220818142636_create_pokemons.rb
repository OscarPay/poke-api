class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :image
      t.string :types

      t.timestamps
    end
  end
end
