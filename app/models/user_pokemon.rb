class UserPokemon < ApplicationRecord
  belongs_to :user
  belongs_to :event
  default_scope { joins(:user).select('user_pokemons.*, users.name') }
end
