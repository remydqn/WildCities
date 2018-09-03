class EventsController < ApplicationController


  def show
    @event = Event.find(params[:id])
  end

  def index
    @choices = current_user.choices.where(accepted: true)
     @events = []
     @events << @choices[0].event
     @events << @choices[1].event
     @events << @choices[2].event


    # @events = @choices.where.not(latitude: nil, longitude: nil)

    iconBase = ActionController::Base.helpers.asset_path('localisation.png')

    @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        icon: iconBase
      }

    end

  end


end
