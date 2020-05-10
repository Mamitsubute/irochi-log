class UserPokemon < ApplicationRecord
  belongs_to :user
  belongs_to :event
  default_scope { joins(:user).select('user_pokemons.*, users.name') }
  validates :user_id, :event_id, :got_num, :irochi_num, presence: true
end
