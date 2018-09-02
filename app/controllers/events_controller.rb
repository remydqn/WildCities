class EventsController < ApplicationController

  def show
    @event = Event.find(params[:id])
  end

  def index
    @choices = current_user.choices
    # @event1 = @choices[0].event
    # @event2 = @choices[1].event
    # @event3 = @choices[2].event



    @events = Event.where.not(latitude: nil, longitude: nil)
    #iconBase = ActionController::Base.helpers.asset_path('if_location-01_186394.png')

    @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
        # icon: iconBase
      }
    end


    @markers <<
      {
        lat: 48.856614,
        lng: 2.3522219
      }

  end


end
