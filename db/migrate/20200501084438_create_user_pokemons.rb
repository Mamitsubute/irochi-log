class CreateUserPokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :user_pokemons do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.references :event_pokemon, foreign_key: true
      t.integer :got_num
      t.integer :irochi_num
      t.integer :max_kotaichi
      t.text :memo

      t.timestamps
    end
  end
end
