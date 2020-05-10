class EventsController < ApplicationController
  include EventsHelper
  before_action :set_event, only: %i[show edit destroy update]

  def index
    @events = Event.all.order(date: :desc)
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @top_got_num = @event.user_pokemons.maximum(:got_num)
    @top_irochi_num = @event.user_pokemons.maximum(:irochi_num)
    @top_max_kotaichi = @event.user_pokemons.maximum(:max_kotaichi)
    irochi_percentage_list = []
    @event.user_pokemons.pluck(:got_num, :irochi_num).each do |array|
      irochi_percentage_list << irochi_percentage(array[0], array[1])
    end
    @top_irochi_percentage = irochi_percentage_list.max
  end

  def destroy
    @event.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    @event.update(event_params)
    redirect_to event_path(params[:id])
  end

  private
  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
      params.require(:event).permit(:title, :pokemon, :date, :description)
  end
end
