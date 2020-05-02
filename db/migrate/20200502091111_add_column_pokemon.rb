class AddColumnPokemon < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :pokemon, :string
  end
end
