class ChangecolumnNullFalse < ActiveRecord::Migration[5.2]
  def change
    change_column_null :events, :date, false, '2020-01-01'
    change_column_null :events, :title, false, 0
    change_column_null :events, :pokemon,  false, 0
    change_column_null :user_pokemons, :user_id, false, 0
    change_column_null :user_pokemons, :event_id, false, 0
    change_column_null :user_pokemons, :got_num, false, 0
    change_column_null :user_pokemons, :irochi_num, false, 0
    change_column_null :users, :name, false, 0
  end
end
