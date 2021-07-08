class EventsController < ApplicationController
  before_action :find, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @events = Event.all


    if params[:address].present?
      @events = Event.near(params[:address], 15) if 
      @marks = @events.geocoded.map do |event|
        {
          lat: event.latitude,
          lng: event.longitude
        }
      end
  
    end

    if params[:search].present?
      @events = @events.search_by_title_and_description(params[:search])
    end
    
    if params[:format].present?
      
      @events = Event.joins(:category).where(categories: { name: params[:format] })

    end
    
    
  end

  def show  
    @booking = Booking.new
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
    params.require(:event).permit(:date, :address, :title, :description, :premium, :category_id, pictures: [])
  end
end
