class Event < ApplicationRecord
  has_many :user_pokemons
  validates :title, :pokemon, :date, presence: true
end
