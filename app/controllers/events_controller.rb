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




    end

  end


end
