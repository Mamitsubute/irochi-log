class EventsController < ApplicationController
  def index
    #TODO: 日付最新順にとってくる
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    event = Event.create(event_params)
    redirect_to root_path
  end

  def show
    @event = Event.find(params[:id])
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
  end

  def edit
  end

  private
  def event_params
      params.require(:event).permit(:title, :pokemon, :date, :description)
  end
end
