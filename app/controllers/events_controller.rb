class EventsController < ApplicationController

  def show
    @event = Event.find(params[:id])
  end

  def index
    @choices = current_user.choices.where(accepted: true)
    @events  = []
    @events  << @choices[0].event
    @events  << @choices[1].event
    @events  << @choices[2].event
    @events[0]

    # Pour chaque event fetcher l'api
    "https://api.mapbox.com/directions/v5/mapbox/cycling/-122.42,37.78;-77.03,38.91?access_token=your-access-token"
    # vous stocker le résultat dans @directions
    # au click vous affichez la directions correspondantes
  end

end
