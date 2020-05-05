class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit destroy update]

  def index
    @events = Event.all.order(date: :desc)
  end

  def new
    @event = Event.new
  end

  def create
    event = Event.create(event_params)
    redirect_to root_path
  end

  def show
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
