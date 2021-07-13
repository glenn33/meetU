class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @categories = Category.all

    @events = Event.all
    
    @sorted_events = @events.sort_by { |event| event.bookings.count }.reverse.first(3)
  end
end
