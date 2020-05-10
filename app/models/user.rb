class User < ApplicationRecord
    has_many :user_pokemons
    validates :name, presence: true
end
