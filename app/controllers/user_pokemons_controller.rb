class UserPokemonsController < ApplicationController
  def new
    @event_id = params[:id]
    @user_pokemon = UserPokemon.new
    @users = User.all
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
    params.require(:user_pokemon).permit(:user_id, :got_num, :irochi_num, :max_kotaichi, :memo, :event_id)
  end
end
