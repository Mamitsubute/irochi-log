class CreateEventPokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :event_pokemons do |t|
      t.references :event, foreign_key: true
      t.integer :poke_id
      t.string :poke_name

      t.timestamps
    end
  end
end
