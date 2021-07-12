class EventsController < ApplicationController
  before_action :find, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @events = Event.all
    
    @events = Event.near(params[:address], 15) if params[:address].present?
    @events = @events.search_by_title_and_description(params[:search]) if params[:search].present?
    @events = Event.joins(:category).where(categories: { name: params[:format] }) if params[:format].present?

    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window: render_to_string(partial: "info_window", locals: { event: event })
      }
    end

    if params[:date].present?
      @events = @events.where(date: params[:date])
    end
  end

  def show
    @booking = Booking.new
    @message = Message.new
    @marker = [{lat: @event.geocode[0], lng: @event.geocode[1]}]
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
