class UserPokemonsController < ApplicationController
  before_action :set_users, only: %i[new edit create]
  before_action :set_user_pokemon, only: %i[edit destroy update]

  def new
    @event_id = params[:event_id]
    @user_pokemon = UserPokemon.new
  end

  def create
    @user_pokemon = UserPokemon.new(user_pokemon_params)
    if @user_pokemon.save
      redirect_to event_path(@user_pokemon.event_id)
    else
      render :new
    end
  end

  def destroy
    @user_pokemon.destroy
    redirect_to event_path(@user_pokemon.event_id)
  end

  def edit
    @event_id = params[:event_id]
  end

  def update
    @user_pokemon.update(user_pokemon_params)
    redirect_to event_path(@user_pokemon.event_id)
  end

  private
  def set_users
    @users = User.all
  end

  def set_user_pokemon
    @user_pokemon = UserPokemon.find(params[:id])
  end

  def user_pokemon_params
    params.require(:user_pokemon).permit(:user_id, :got_num, :irochi_num, :max_kotaichi, :memo, :event_id)
  end
end
