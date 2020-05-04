class UserPokemonsController < ApplicationController
  def new
    @user_pokemon = UserPokemon.new
  end

  def create
    user_pokemon = UserPokemon.create(user_pokemon_params)
    # pathかえる
    redirect_to root_path
  end

  def destroy
  end

  def edit
  end

  private
  def user_pokemon_params
      params.require(:event).permit(:title, :pokemon, :date, :description)
  end
end
