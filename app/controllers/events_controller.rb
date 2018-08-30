class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
  end

  def index
    #@choices = current_user.choices
    #@event1 = @choices[0].event
    #@event2 = @choices[1].event
    #@event3 = @choices[2].event

    @events = Event.where.not(latitude: nil, longitude: nil)
    #iconBase = ActionController::Base.helpers.asset_path('gmaps-image.png')

    @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        icon: iconBase
      }

    end
  end
end
