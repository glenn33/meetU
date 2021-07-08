class EventsController < ApplicationController
  before_action :find, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @events = Event.all
  
  end

  def show
    @booking = Booking.new

    #  raise
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end
  
  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end

  def my_events
    @events = current_user.events
  end

  private

  def find
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:date, :address, :title, :description, :premium, :category_id, :pictures)
  end
end
